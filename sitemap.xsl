<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
  xmlns:html="http://www.w3.org/TR/REC-html40"
  xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title>XML Sitemap — AuditPilot Enterprise</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <style type="text/css">
          * { box-sizing: border-box; margin: 0; padding: 0; }
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            background-color: #0F172A;
            color: #F8FAFC;
            padding: 2.5rem 1.5rem;
            line-height: 1.6;
          }
          .container {
            max-width: 1040px;
            margin: 0 auto;
          }
          .header-box {
            background: #1E293B;
            border: 1px solid #334155;
            border-radius: 12px;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.4);
          }
          .brand-row {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            margin-bottom: 0.75rem;
          }
          .brand-badge {
            background: #2563EB;
            color: #FFFFFF;
            font-size: 0.75rem;
            font-weight: 700;
            padding: 0.25rem 0.65rem;
            border-radius: 6px;
            text-transform: uppercase;
            letter-spacing: 0.05em;
          }
          h1 {
            font-size: 1.75rem;
            font-weight: 800;
            color: #FFFFFF;
            letter-spacing: -0.02em;
          }
          p.desc {
            color: #94A3B8;
            font-size: 0.95rem;
            margin-top: 0.5rem;
          }
          .stats-strip {
            display: flex;
            gap: 1.5rem;
            margin-top: 1.25rem;
            padding-top: 1.25rem;
            border-top: 1px solid #334155;
            flex-wrap: wrap;
          }
          .stat-pill {
            font-size: 0.85rem;
            color: #CBD5E1;
          }
          .stat-pill strong {
            color: #38BDF8;
          }
          .table-card {
            background: #1E293B;
            border: 1px solid #334155;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.4);
          }
          table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.9rem;
            text-align: left;
          }
          thead th {
            background: #0F172A;
            color: #94A3B8;
            padding: 1rem 1.25rem;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.75rem;
            letter-spacing: 0.06em;
            border-bottom: 1px solid #334155;
          }
          tbody tr {
            border-bottom: 1px solid #334155;
            transition: background 0.15s ease;
          }
          tbody tr:hover {
            background: rgba(37, 99, 235, 0.1);
          }
          tbody tr:last-child {
            border-bottom: none;
          }
          td {
            padding: 1rem 1.25rem;
            color: #E2E8F0;
            vertical-align: middle;
          }
          a {
            color: #60A5FA;
            text-decoration: none;
            font-weight: 600;
            word-break: break-all;
          }
          a:hover {
            text-decoration: underline;
            color: #93C5FD;
          }
          .priority-tag {
            display: inline-block;
            background: #065F46;
            color: #34D399;
            font-size: 0.75rem;
            font-weight: 700;
            padding: 0.2rem 0.5rem;
            border-radius: 4px;
          }
          .freq-tag {
            color: #94A3B8;
            font-size: 0.8rem;
          }
          .footer-note {
            text-align: center;
            color: #64748B;
            font-size: 0.82rem;
            margin-top: 2rem;
          }
          .footer-note a {
            color: #94A3B8;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <div class="header-box">
            <div class="brand-row">
              <span class="brand-badge">AuditPilot SEO</span>
              <span style="color: #64748B;">•</span>
              <span style="color: #94A3B8; font-size: 0.85rem;">Google &amp; Search Engine Index</span>
            </div>
            <h1>XML Sitemap Document</h1>
            <p class="desc">
              This machine-readable XML sitemap is dynamically generated for search engine crawlers (Googlebot, Bingbot). It is rendered here with visual formatting for webmaster inspection.
            </p>
            <div class="stats-strip">
              <div class="stat-pill">Indexed URLs: <strong><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></strong></div>
              <div class="stat-pill">Attached Media: <strong><xsl:value-of select="count(sitemap:urlset/sitemap:url/image:image)"/> Images</strong></div>
              <div class="stat-pill">Status: <strong>Search Console Verified (200 OK)</strong></div>
            </div>
          </div>

          <div class="table-card">
            <table>
              <thead>
                <tr>
                  <th style="width: 55%;">URL Location</th>
                  <th style="width: 15%;">Priority</th>
                  <th style="width: 15%;">Change Frequency</th>
                  <th style="width: 15%;">Last Updated</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="sitemap:urlset/sitemap:url">
                  <tr>
                    <td>
                      <a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a>
                      <xsl:if test="count(image:image) &gt; 0">
                        <div style="font-size: 0.78rem; color: #94A3B8; margin-top: 0.25rem;">
                          📷 <xsl:value-of select="count(image:image)"/> Rich Image Asset<xsl:if test="count(image:image) &gt; 1">s</xsl:if> Attached
                        </div>
                      </xsl:if>
                    </td>
                    <td>
                      <span class="priority-tag"><xsl:value-of select="sitemap:priority"/></span>
                    </td>
                    <td>
                      <span class="freq-tag"><xsl:value-of select="sitemap:changefreq"/></span>
                    </td>
                    <td style="color: #94A3B8; font-size: 0.82rem;">
                      <xsl:value-of select="substring(sitemap:lastmod, 0, 11)"/>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </div>

          <div class="footer-note">
            Generated for <a href="https://auditpilot.us/">AuditPilot Enterprise</a> • Google Search Console &amp; Bing Webmaster Tools Compliant
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

