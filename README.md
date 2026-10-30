# AuditPilot — Public Web Application

This repository contains the production static release of **AuditPilot**, an enterprise B2B website conversion audit and diagnostic platform.

## Architecture & Hosting

This distribution is engineered for zero-maintenance global static edge delivery via **GitHub Pages** (or Cloudflare Pages):

- **Single-Page Application (SPA) Routing**: Includes `404.html` and `_redirects` to route all direct hash and deep-link navigations into the client-side router without server dependencies.
- **Security & Asset Delivery**: `.nojekyll` ensures all asset bundles and underscores are served directly.
- **Search Engine Optimization**: Fully formatted `sitemap.xml` and `robots.txt` with JSON-LD schema definitions embedded directly in `index.html`.
- **Client Performance**: Pre-bundled and minified assets located in `/assets`.

## Quick Deployment (GitHub Pages)

1. Enable **GitHub Pages** under repository **Settings** -> **Pages**.
2. Select Source: **Deploy from a branch**.
3. Choose Branch: `main` and Folder: `/ (root)`.
4. Check **Enforce HTTPS**.
5. Your application is live immediately.
