# AuditPilot — Public Static Distribution

Production-ready distribution bundle for **AuditPilot** (`https://auditpilot.us`), the website audit, CRO review, and white-label client acquisition platform.

## Hosting on GitHub Pages
1. Push this repository to GitHub.
2. Go to **Settings** -> **Pages**.
3. Select **Deploy from a branch** -> `main` / `/ (root)`.
4. Check **Enforce HTTPS**.
5. Set custom domain to `auditpilot.us` (or configure via Cloudflare).

## Structure
- `index.html` — Production-optimized single page application.
- `sitemap_index.xml` — Multi-sitemap index pointing to sub-sitemaps (`sitemap-pages.xml`, `sitemap-tools.xml`, `sitemap-comparisons.xml`, `sitemap-resources.xml`).
- `tools/`, `compare/`, `features/`, `resources/`, `author/` — Static, SEO-optimized SILO landing pages.
- `silo.css` — Modern, lightweight responsive styling for SILO pages.
- `robots.txt` — Search crawler directives with sitemap index references.
- `_headers` & `_redirects` — Edge security (HSTS 63072000, CSP, UTF-8).
