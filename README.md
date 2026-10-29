# AuditPilot — Public Website & Client Application

This repository contains the production static release of **AuditPilot**, an enterprise B2B website diagnostic scanner and client acquisition platform.

## Hosting & Deployment

This build is pre-configured for **GitHub Pages** and **Cloudflare Pages / CDN**:

- **GitHub Pages**:
  - Deploy from `main` branch, `/ (root)` folder.
  - Enforce HTTPS in Repository Settings -> Pages.
  - `.nojekyll` file is included to prevent Jekyll from discarding folders starting with `_` or assets.

- **Cloudflare Custom Domain & Edge Routing**:
  - Point your domain's CNAME record to `<username>.github.io` (Proxied through Cloudflare).
  - Set SSL/TLS to **Full (Strict)**.
  - `_headers` provides security headers: HSTS (`Strict-Transport-Security`), CSP, nosniff, and frameguard.
  - `_redirects` provides SPA client-side routing.
  - `cloudflare-worker.js` is provided if you choose to deploy as a Cloudflare Worker reverse-proxy to route `/api/*` to the private backend.

- **SEO & Google Search Console**:
  - `robots.txt` and `sitemap.xml` are configured and ready.
  - Google Image extensions are embedded in `sitemap.xml`.
  - OpenGraph, Twitter Card, and Schema.org rich snippets (SoftwareApplication, FAQPage, Organization, WebSite) are embedded in `index.html`.
