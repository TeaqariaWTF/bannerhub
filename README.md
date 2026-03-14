# BannerHub

Rebuild pipeline for **GameHub 5.3.5 ReVanced** using apktool. Applies smali and resource patches to add a Component Manager, BCI launcher button, RTS touch controls, and UI tweaks directly inside GameHub.

## Features

### Component Manager
Accessible via GameHub's left side menu → **Components**.

- Lists all installed components from `files/usr/home/components/`
- **Inject WCP/ZIP** — pick any `.wcp` or `.zip` file via the Android file picker. Supports:
  - **ZIP** (Turnip / adrenotools GPU drivers) — flat extraction to component root
  - **zstd tar** — DXVK, VKD3D, Box64: preserves `system32/`+`syswow64/` structure; FEXCore: flat to component root
  - **XZ tar** — same logic as zstd path
- **Backup component** — copies component folder to `Downloads/BannerHub/{name}/`
- Component folder is fully cleared before every injection (no stale files)
- Extraction runs on a background thread; errors are surfaced as toasts

### BCI Launcher Button
Tap the banner icon in GameHub's top-right toolbar to open **BannersComponentInjector** (`com.banner.inject`). Shows a toast if it is not installed.

### RTS Touch Controls
Accessible via **Settings → Controls tab** in the in-game sidebar overlay. Toggle on to enable a gesture overlay for PC/RTS games:

- **Tap to click** — moves cursor and left-clicks at tap position
- **Drag for box selection** — holds LMB during drag to draw a selection box
- **Long press for right-click** — 300ms hold triggers right-click
- **Double-tap for double-click** — two taps within 250ms / 50px
- **Two-finger pan** — drags the camera (configurable action)
- **Pinch-to-zoom** — mouse wheel scroll (configurable action)
- **Gesture settings dialog** — customizable action picker for two-finger pan and pinch

### UI Tweaks
- "My" tab renamed to "My Games"

## How it works

1. The original APK is stored as a GitHub Release asset under the `base-apk` tag (GameHub 5.3.5 ReVanced Normal, 136 MB).
2. CI downloads it, decompiles with apktool, overlays everything in `patches/`, rebuilds, zipaligns, and signs.
3. The rebuilt APK is uploaded as a GitHub Release asset.

No external library injection — the Component Manager uses GameHub's own bundled libraries (commons-compress, zstd-jni, tukaani xz) via their correct runtime signatures.

## Installation

Download the APK matching your target package from the [latest stable release](https://github.com/The412Banner/bannerhub/releases/latest):

| APK | Package | Use for |
|-----|---------|---------|
| `Bannerhub-5.3.5-Revanced-Normal.apk` | `gamehub.lite` | Standard GameHub Lite |
| `Bannerhub-5.3.5-Revanced-PuBG.apk` | `com.tencent.ig` | GameHub Lite PuBG |
| `Bannerhub-5.3.5-Revanced-AnTuTu.apk` | `com.antutu.ABenchMark` | GameHub Lite AnTuTu |
| `Bannerhub-5.3.5-Revanced-Ludashi.apk` | `com.ludashi.aibench` | GameHub Lite Ludashi |
| `Bannerhub-5.3.5-Revanced-Genshin.apk` | `com.mihoyo.genshinimpact` | GameHub Lite Genshin |

All APKs are signed with AOSP testkey (v1/v2/v3). Coexists with the original GameHub app.

## Triggering a build

- Push a `v*` tag: `git tag v2.2.1 && git push origin refs/tags/v2.2.1`
- Or: **Actions → Build APK → Run workflow**

## Signing

Signed with AOSP testkey (`testkey.pk8` / `testkey.x509.pem`), v1 + v2 + v3 signatures.
