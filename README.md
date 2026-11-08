# HerdKeeper for Windows

This wraps your uploaded `index.html` in a Windows desktop application using Electron.
The original HTML interface and its built-in features are included as supplied.

## Build the Windows downloads (easy route: GitHub)

1. Create a free GitHub account if you do not have one.
2. Create a **private** or **public** repository named `herdkeeper`.
3. Upload all files in this folder to that repository (keep the `.github` folder).
4. Open the repository's **Actions** tab and run **Build HerdKeeper for Windows**.
5. When it finishes, open the workflow run and download the `HerdKeeper-Windows` artifact.
   It contains:
   - `HerdKeeper Setup 1.0.0.exe` — normal installer, creates Start Menu/Desktop shortcuts.
   - `HerdKeeper-Portable-1.0.0.exe` — runs without installing.
6. To publish a version for your website, create a GitHub release with a tag such as `v1.0.0`.
   The workflow automatically attaches both Windows downloads to the release.

## Put a download link on your website

Upload `website-download.html` to your website, or copy its download section into your existing page.
After you create a GitHub release, replace `YOUR-GITHUB-USERNAME` in the links with your GitHub username.
Visitors can download the installer directly from your release.

## Saving data

HerdKeeper uses browser local storage. In the Windows app, this is saved in the app's Windows user profile and remains after closing/reopening the app. It is not automatically shared with the website/browser version or another computer. Use HerdKeeper's existing export/backup and Google Sheets sync options if enabled and configured.

## Important security note before sharing publicly

The uploaded HTML currently contains a built-in login password (`1234`) in client-side code. That is not secure authentication: anyone who can inspect the page/app files can discover it. Do not use that password to protect sensitive or private herd records, and do not advertise the app as secure multi-user/private cloud storage. A real account system requires a backend authentication and database setup. This desktop wrapper does not add that.

## Local development

Install Node.js LTS, then in this folder run:

```bash
npm install
npm start
```

To build on a Windows PC:

```bash
npm run dist:win
```

Output files are placed in `release/`.
