# BannerHub Progress Log

Tracks every commit, patch, and change applied to the GameHub 5.3.5 ReVanced APK rebuild.

---

## Session 1 — 2026-03-12

### [init] — Initial repo setup
**Commit:** `78c525c` | **Tag:** none
#### What changed
- Created GitHub repo `The412Banner/bannerhub`
- Built apktool-based rebuild workflow: downloads base APK → decompile → overlay `patches/` → rebuild → sign → release
- Generated debug keystore (`keystore.jks`, alias: `bannerhub`, pw: `bannerhub123`)
- Uploaded original `Gamehub-5.3.5-Revanced-Normal.apk` as `base-apk` release asset (136MB)
- `.gitignore` excludes `apktool_out/`, `jadx_out/`, `base/`, rebuilt APKs
#### Files touched
- `.github/workflows/build.yml`
- `keystore.jks`
- `patches/.gitkeep`
- `.gitignore`, `README.md`

---

### [fix] — Workflow: apktool permission denied
**Commit:** `0068e4e` | **Tag:** v1.0.1 (failed build)
#### What changed
- apktool jar was being written to `/usr/local/lib/` which is read-only on GitHub runners
- Changed to `$HOME/bin/` for both the jar and wrapper script
- Switched from `apktool` wrapper to `java -jar apktool.jar` calls directly
#### Files touched
- `.github/workflows/build.yml`

---

### [fix] — Workflow: raws.xml aapt2 compile error
**Commit:** `fb55474` | **Tag:** v1.0.2 (failed build)
#### What changed
- `res/values/raws.xml` contains Firebase boolean entries (`firebase_common_keep`, `firebase_crashlytics_keep`) that aapt2 rejects — expects file references, not boolean values
- Added workflow step to `rm -f apktool_out/res/values/raws.xml` after decompile
#### Files touched
- `.github/workflows/build.yml`

---

### [fix] — Workflow: dangling public.xml firebase symbols
**Commit:** `415a2b1` | **Tag:** v1.0.3 ✅ **FIRST SUCCESSFUL BUILD**
#### What changed
- Deleting `raws.xml` left `public.xml` declaring those symbols → aapt2 "no definition for declared symbol" error
- Added `sed -i '/firebase_common_keep\|firebase_crashlytics_keep/d' apktool_out/res/values/public.xml` to workflow after the raws.xml deletion
- **Build succeeded** — `Gamehub-rebuilt.apk` produced and uploaded to v1.0.3 release
#### Files touched
- `.github/workflows/build.yml`

---

### [patch] — Rename "My" tab to "My Games"
**Commit:** `6433837` | **Tag:** v1.0.0 (preceded fix commits, rolled into v1.0.3 build)
#### What changed
- String key `llauncher_main_page_title_my` changed from `"My"` to `"My Games"`
- Affects the top toolbar tab label in the main launcher screen
#### Files touched
- `patches/res/values/strings.xml` (line 1410)

---

### [patch] — Add BCI launcher button to top bar
**Commit:** `b148ee2` | **Tag:** v1.0.4 (failed — firebase regression)
#### What changed
- Added a small "open in new" icon button (`iv_bci_launcher`) to the top-right toolbar, after the search icon
- Tapping it launches BannersComponentInjector (`com.banner.inject`) if installed
- If BCI is not installed, shows a Toast: "BannersComponentInjector is not installed"
- New smali class `BciLauncherClickListener` handles the click logic
- Button wired in `LandscapeLauncherMainActivity.initView()` via `findViewById` + `setOnClickListener`
- New resource ID `iv_bci_launcher` = `0x7f0a0ef9`
#### Files touched
- `patches/res/layout/llauncher_activity_new_launcher_main.xml` — added ImageView
- `patches/res/values/ids.xml` — added `iv_bci_launcher` entry
- `patches/res/values/public.xml` — added public ID `0x7f0a0ef9`
- `patches/smali_classes9/com/xj/landscape/launcher/R$id.smali` — added field
- `patches/smali_classes11/com/xj/landscape/launcher/ui/main/BciLauncherClickListener.smali` — new file
- `patches/smali_classes11/com/xj/landscape/launcher/ui/main/LandscapeLauncherMainActivity.smali` — initView hook

---

### [fix] — patches/public.xml reintroduced firebase symbols
**Commit:** `c30103f` | **Tag:** v1.0.5 (in progress)
#### What changed
- The `patches/res/values/public.xml` overlay was overwriting the workflow-cleaned version, putting firebase entries back
- Removed `firebase_common_keep` and `firebase_crashlytics_keep` lines from `patches/public.xml`
- **Rule going forward:** Any patch that includes `public.xml` or touches resource files must also not contain the two firebase raw entries
#### Files touched
- `patches/res/values/public.xml`

---

## Known Issues / Notes

- **firebase raws rule:** Never include `firebase_common_keep` or `firebase_crashlytics_keep` entries in any patched `public.xml` — they have no corresponding raw file and aapt2 will reject the build
- **Signing:** Debug key only (`keystore.jks`). Must uninstall existing GameHub before sideloading rebuilt APK (signature mismatch)
- **Base APK:** `Gamehub-5.3.5-Revanced-Normal.apk` stored in `base-apk` release — do not delete
- **apktool version:** 2.9.3 (pinned in workflow)
- **DataBinding note:** The main launcher uses DataBinding. New views added via layout XML patches can be wired via `getMDataBind().getRoot().findViewById()` in `initView` without touching the binding impl classes

### [release] — v1.0.5 marked as stable release
**Commit:** `dad069f` | **Tag:** v1.0.5 ✅ **STABLE**
#### What changed
- v1.0.5 build succeeded and promoted to stable release
- Release description written covering all applied patches: "My Games" tab rename + BCI launcher button
- Progress log added to repo

---

### [patch] — Option B: Embedded Component Manager in side menu
**Commit:** `d2f17e9` | **Tag:** v1.0.6 (in progress)
#### What changed
- Added "Components" item (ID=9) to `HomeLeftMenuDialog` side nav menu
- Extended packed-switch table in `HomeLeftMenuDialog.o1()` to handle ID 9 → launches `ComponentManagerActivity`
- New `ComponentManagerActivity` (pure smali, no Kotlin compile needed):
  - Extends `AppCompatActivity`, implements `AdapterView$OnItemClickListener`
  - Lists GameHub component folders from `getFilesDir()/usr/home/components/` in a ListView
  - Per-component options: Inject file (SAF `ACTION_OPEN_DOCUMENT`), Backup to `Downloads/BannerHub/{name}/`
  - Backup uses recursive `copyDir()` — no root required
  - Back press from options list returns to component list
- `AndroidManifest.xml`: declared `ComponentManagerActivity` with `sensorLandscape` orientation
#### Files touched
- `patches/smali_classes5/com/xj/landscape/launcher/ui/menu/HomeLeftMenuDialog.smali` — MenuItem add + pswitch_9 + table extension
- `patches/smali_classes11/com/xj/landscape/launcher/ui/menu/ComponentManagerActivity.smali` — new file
- `patches/AndroidManifest.xml` — activity declaration

---

### [fix] — Multiple crash/build fixes (v1.0.7 through v2.0.3-pre)
**Commits:** several | **Tags:** v1.0.7 → v2.0.3-pre
#### What changed
- **v1.0.7**: Moved ComponentManagerActivity to smali_classes16 (classes11 was near dex index limit)
- **v1.0.8**: Fixed VerifyError — DIRECTORY_DOWNLOADS static field ref; removed double new-array in copyDir()
- **v1.0.9**: Fixed ArrayAdapter crash — replaced hardcoded layout ID with `sget Landroid/R$layout;->simple_list_item_1:I`
- **v1.0.10**: Fixed invoke-virtual 6-arg crash — `ContentResolver.query()` now uses `invoke-virtual/range`
- **v1.0.11**: Fixed "inject failed" with path-as-error — query `_display_name` instead of `getLastPathSegment()`
- **v2.0.0**: Stable release with working component list, backup, and raw-file inject
- **v2.0.1-pre → v2.0.3-pre**: WCP/ZIP extraction pipeline — added WcpExtractor.smali (zstd tar + XZ tar + ZIP), bundled commons-compress + aircompressor + xz JARs via d8 dex injection into APK (baksmali approach abandoned — no executable JAR available); extraction runs but crashes with FATAL EXCEPTION (Error not caught by Exception handler)

---

### [fix] — Background thread + Throwable catch for WCP extraction
**Commit:** `7ad71f4` | **Tag:** v2.0.4-pre
#### What changed
- `injectFile()` now spawns a `java.lang.Thread` for extraction — UI thread is never blocked (fixes long black screen on large WCP files)
- `ComponentManagerActivity$1.smali` (new): background Runnable — calls `WcpExtractor.extract()`, catches `Throwable` (not just `Exception`), posts result to main thread via `Handler(Looper.getMainLooper())`
- `ComponentManagerActivity$2.smali` (new): UI Runnable — shows success/failure Toast and refreshes component list on main thread
- Previously `Error` subclasses (e.g. `NoClassDefFoundError` if library dex missing, `OutOfMemoryError`) bypassed the `Exception` catch entirely and crashed the app
#### Files touched
- `patches/smali_classes16/com/xj/landscape/launcher/ui/menu/ComponentManagerActivity.smali` — injectFile() rewritten
- `patches/smali_classes16/com/xj/landscape/launcher/ui/menu/ComponentManagerActivity$1.smali` — new
- `patches/smali_classes16/com/xj/landscape/launcher/ui/menu/ComponentManagerActivity$2.smali` — new

---

### [fix] — XZ extraction fix + clear before inject
**Commit:** `fb5592d` | **Tag:** v2.0.5-pre
#### What changed
- WcpExtractor: replaced `org.tukaani.xz.XZInputStream` with `org.apache.commons.compress.compressors.xz.XZCompressorInputStream` — d8 conversion of xz-1.9.jar produced dex where the constructor `<init>(InputStream)V` was not found at runtime (`NoSuchMethodError`). commons-compress wraps tukaani internally and its constructor is found correctly.
- WcpExtractor: added `clearDir()` static method that recursively deletes all files/subdirs in the component directory before injection. Called at the top of `extract()` so stale files (e.g. from a previous ZIP inject) are removed first.
- Both ZIP and WCP (zstd + XZ) paths now start with a clean slate.
#### Files touched
- `patches/smali_classes16/com/xj/landscape/launcher/ui/menu/WcpExtractor.smali`

---

## Planned Work

- [ ] Confirm v2.0.5-pre WCP (XZ + zstd) extraction works end-to-end
- [ ] Once both ZIP and WCP confirmed working, cut stable v2.1.0 release
- [ ] Explore contributing functional patches to `playday3008/gamehub-patches` PR #13
