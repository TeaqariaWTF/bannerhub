# BannerHub — Amazon Games Integration: Complete Implementation Reference

**Version:** v2.7.6
**Branch merged:** amazon-integration → main
**Date:** 2026-03-29

**Credits:** The Amazon Games API pipeline, PKCE authentication flow, manifest.proto download architecture, exe scoring heuristic, FuelPump environment variables, and SDK DLL deployment in this implementation are based on the research and implementation of [The GameNative Team](https://github.com/utkarshdalal/GameNative). Without their work this feature would not have been possible.

---

## Table of Contents

1. [Overview](#1-overview)
2. [Class Structure](#2-class-structure)
3. [Injection Points](#3-injection-points)
4. [Authentication Flow](#4-authentication-flow)
5. [Library Sync](#5-library-sync)
6. [Download Pipeline](#6-download-pipeline)
7. [Launch Flow](#7-launch-flow)
8. [SDK DLL Deployment](#8-sdk-dll-deployment)
9. [Update Checker](#9-update-checker)

---

## 1. Overview

Amazon Games integration adds a full game library, download, and launch pipeline
to BannerHub. It uses Amazon's Coral RPC API (gaming.amazon.com) with PKCE OAuth2
login, protobuf manifest downloads, and Wine launch via LandscapeLauncherMainActivity.

Menu entry: Side menu ID 11 (0xb) → `AmazonMainActivity` → `AmazonGamesActivity`

SharedPreferences file: `bh_amazon_prefs`

---

## 2. Class Structure

| File | Purpose |
|------|---------|
| `AmazonPKCEGenerator.java` | PKCE code verifier/challenge generation, SHA-256 helpers |
| `AmazonCredentialStore.java` | Credential persistence (credentials.json in filesDir/amazon/) |
| `AmazonAuthClient.java` | OAuth2 PKCE login, token refresh, generic GET helper |
| `AmazonMainActivity.java` | Login WebView activity (PKCE flow) |
| `AmazonGamesActivity.java` | Full library UI — list/grid/poster, install, launch, update |
| `AmazonGame.java` | Data model: title, productId, entitlementId, productSku, art URLs |
| `AmazonApiClient.java` | Amazon Coral RPC API client (GetEntitlements, GetGameDownload, GetLiveVersionIds) |
| `AmazonManifest.java` | manifest.proto protobuf parser (XZ/LZMA decompression, file list) |
| `AmazonDownloadManager.java` | Download pipeline (6-parallel chunks, SHA-256, resume) |
| `AmazonLaunchHelper.java` | fuel.json parser, exe scoring heuristic, Wine command builder |
| `AmazonSdkManager.java` | FuelSDK_x64.dll + AmazonGamesSDK DLL download and Wine prefix deploy |

---

## 3. Injection Points

### Side menu entry (smali patch)
- `HomeLeftMenuDialog.smali` — adds menu item ID=11 (0xb) → starts `AmazonMainActivity`

### Launch hook (smali patch)
- `LandscapeLauncherMainActivity.smali` — `onResume()` reads `pending_amazon_exe` from
  `bh_amazon_prefs`; if set, clears it and calls `B3(exePath)` to open the add-game dialog

### Manifest registration
- `AndroidManifest.xml` — `AmazonMainActivity` and `AmazonGamesActivity` registered

---

## 4. Authentication Flow

PKCE OAuth2 via Amazon's authorization server:

1. `AmazonPKCEGenerator` generates 64-byte random code verifier + SHA-256 S256 challenge
2. `AmazonMainActivity` opens WebView to Amazon login URL with `code_challenge` param
3. On redirect to `bannerhub://amazon-callback?code=...`, extracts auth code
4. `AmazonAuthClient.exchangeCode()` POSTs to token endpoint → access + refresh tokens
5. `AmazonCredentialStore` saves `credentials.json` (accessToken, refreshToken, expiresAt, deviceSerial, clientId)
6. Token refresh: `getValidAccessToken()` checks `(expiresAt - now) < 5 min`, auto-refreshes

---

## 5. Library Sync

`AmazonApiClient.getEntitlements(accessToken, deviceSerial)`:

- Computes `hardwareHash = SHA-256(deviceSerial).toUpperCase()`
- POSTs to `https://gaming.amazon.com/api/distribution/entitlements`
- Target: `com.amazon.animusdistributionservice.entitlement.AnimusEntitlementsService.GetEntitlements`
- Required headers: `X-Amz-Target`, `x-amzn-token`, `Content-Encoding: amz-1.0`
- Paginates via `nextToken` until null
- Parses `product.id` (productId), `id` (entitlementId), `product.sku`, art URLs, developer/publisher

---

## 6. Download Pipeline

`AmazonDownloadManager.install()`:

1. `GetGameDownload` (entitlementId) → `downloadUrl` + `versionId`
   - Target: `com.amazon.animusdistributionservice.external.AnimusDistributionService.GetGameDownload`
2. GET `{downloadUrl}/manifest.proto` → parse with `AmazonManifest.parse()`
   - manifest.proto is XZ/LZMA compressed; uses `org.tukaani.xz.XZInputStream` (built into GameHub)
   - Protobuf wire format: field 1 = path (backslash string), field 3 = size (varint), field 4 = hash algo, field 5 = hash bytes
3. For each file: GET `{downloadUrl}/files/{hashHex}` → tmp file → SHA-256 verify → rename
   - 6 parallel downloads via `ExecutorService`
   - Up to 3 retries with 1s/2s/4s backoff
   - Resume: skip if `destFile.length() == file.size`
   - Progress emitted every 512KB

---

## 7. Launch Flow

`AmazonLaunchHelper.buildLaunchSpec(installDir, gameTitle, cachedRelPath)`:

1. Parse `fuel.json` (if present) for `Main.Command`, `Main.WorkingSubdirOverride`, `Main.Args`
2. If no fuel.json command: run exe scoring heuristic (`choosePrimaryExe`)
   - Scores based on UE shipping pattern, `/binaries/win*/` path, name match, negative keywords
3. Build Wine path: `A:\path\to\game.exe`
4. Return `winhandler.exe "A:\game.exe" [args]`

`buildFuelEnv(game)` returns 5 env vars for FuelPump:
- `FUEL_DIR`, `AMAZON_GAMES_SDK_PATH`, `AMAZON_GAMES_FUEL_ENTITLEMENT_ID`, `AMAZON_GAMES_FUEL_PRODUCT_SKU`, `AMAZON_GAMES_FUEL_DISPLAY_NAME`

Launch trigger: `AmazonGamesActivity.pendingLaunchExe(absPath)` stores path in `bh_amazon_prefs`
as `pending_amazon_exe`, then fires `FLAG_ACTIVITY_CLEAR_TOP | SINGLE_TOP` Intent to
`LandscapeLauncherMainActivity` which picks it up in `onResume()` and calls `B3(exePath)`.

---

## 8. SDK DLL Deployment

`AmazonSdkManager.ensureSdkFiles(ctx, accessToken)`:

- Downloads FuelSDK channel spec → manifest → filters for `Amazon Games Services` path entries
- Downloads `FuelSDK_x64.dll` → cached to `filesDir/amazon_sdk/Amazon Games Services/Legacy/`
- Downloads `AmazonGamesSDK_*.dll` → cached to `filesDir/amazon_sdk/Amazon Games Services/AmazonGamesSDK/`
- Writes `.sdk_version` sentinel after successful download

`deploySdkToPrefix(ctx, prefixProgramData)`:
- Copies cached DLLs to `{wine_prefix}/drive_c/ProgramData/Amazon Games Services/`

---

## 9. Update Checker

`AmazonApiClient.getLiveVersionId(accessToken, productId)`:

- POSTs `{"adgProductIds": [productId]}` to distribution v2 endpoint
- Target: `com.amazon.animusdistributionservice.external.AnimusDistributionService.GetLiveVersionIds`
- Returns live `versionId` for the product
- `AmazonGamesActivity.checkForUpdates()` compares against stored `versionId`; if different, appends `_UPDATE_AVAILABLE` and shows orange badge on game card
