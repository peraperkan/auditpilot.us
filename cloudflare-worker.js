/**
 * ============================================================================
 * AUDITPILOT - CLOUDFLARE EDGE WORKER REVERSE PROXY
 * Enables single-domain architecture:
 *   - /api/*  -> Routed to your Private Backend (Render, Railway, Fly.io, etc.)
 *   - /*      -> Routed to your GitHub Pages Static Frontend
 * ============================================================================
 */

const FRONTEND_ORIGIN = 'https://auditpilot.us';
const BACKEND_ORIGIN = 'https://<your-backend-app>.onrender.com'; // TODO: set once backend is deployed

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);

    // Route API calls to the private backend
    if (url.pathname.startsWith('/api/')) {
      const backendUrl = new URL(url.pathname + url.search, BACKEND_ORIGIN);
      const newRequest = new Request(backendUrl, {
        method: request.method,
        headers: request.headers,
        body: request.body,
        redirect: 'follow'
      });
      return fetch(newRequest);
    }

    // Route all static assets & pages to GitHub Pages
    const frontendUrl = new URL(url.pathname + url.search, FRONTEND_ORIGIN);
    const response = await fetch(new Request(frontendUrl, request));

    // Inject enhanced security headers at Cloudflare edge
    const newHeaders = new Headers(response.headers);
    newHeaders.set('Strict-Transport-Security', 'max-age=31536000; includeSubDomains; preload');
    newHeaders.set('X-Content-Type-Options', 'nosniff');
    newHeaders.set('X-Frame-Options', 'SAMEORIGIN');
    newHeaders.set('Referrer-Policy', 'strict-origin-when-cross-origin');

    return new Response(response.body, {
      status: response.status,
      statusText: response.statusText,
      headers: newHeaders
    });
  }
};
