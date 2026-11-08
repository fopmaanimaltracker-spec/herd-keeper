HERDKEEPER - BUILD WITHOUT GITHUB

1. Extract the entire ZIP folder to your Windows PC.
2. If Node.js is not installed, install the LTS version from https://nodejs.org/ (Windows Installer .msi).
3. Double-click "BUILD HERDKEEPER.bat".
4. Wait while it downloads the build tools and creates the app.
5. Open the RELEASE folder. Run "HerdKeeper Setup 1.0.0.exe" to install it.
   The portable EXE can run without installation.

To share the installer on your website:
- Upload the generated Setup EXE to your website's file/media storage.
- Add a Download button that links directly to that EXE.
- Keep the portable EXE available as an optional download if you want.

Important:
- The first build requires an internet connection to download Electron build tools.
- The current app stores records locally on each computer unless its existing Google Sheets sync is configured.
- The current HTML app has a built-in password (1234); this is not secure login protection for private online records.
