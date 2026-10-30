#!/usr/bin/env node
/**
 * Static SEO checks for the deployed Vercel site.
 * Run with: node scripts/validate-seo.mjs
 * No external packages or network calls required.
 */
import { readFileSync, existsSync } from 'node:fs';
import path from 'node:path';

const root = path.resolve('vercel-site');
const domain = 'https://our-cs.com';
const problems = [];
const fail = (message) => problems.push(message);
const sharedCSS = readFileSync(path.join(root, 'assets/css/style.css'), 'utf8');
if (/^\s*@import\s+url\(\s*['"]?https:\/\/fonts\.googleapis\.com/im.test(sharedCSS))
  fail('Avoid render-blocking @import for Google Fonts in shared CSS');

const sitemap = readFileSync(path.join(root, 'sitemap.xml'), 'utf8');
const urls = [...sitemap.matchAll(/<loc>([^<]+)<\/loc>/g)].map((match) => match[1]);
const normalized = (url) => new URL(url, domain).pathname.replace(/\/$/, '') || '/';
const routes = new Set(urls.map(normalized));
const instances = new Map();
const sitePath = (url) => {
  const route = new URL(url).pathname;
  if (route === '/') return path.join(root, 'index.html');
  if (route.endsWith('/')) return path.join(root, route.slice(1), 'index.html');
  return path.join(root, route.slice(1) + '.html');
};
const tags = (html, tag) => [...html.matchAll(new RegExp('<' + tag + '\\b[^>]*>', 'gi'))].map((x) => x[0]);
const attribute = (tag, name) => tag.match(new RegExp('\\b' + name + '\\s*=\\s*["\\x27]([^"\\x27]*)["\\x27]', 'i'))?.[1] ?? null;
const meta = (html, key, value) => tags(html, 'meta').find((tag) => attribute(tag, key) === value);
const link = (html, rel) => tags(html, 'link').find((tag) => attribute(tag, 'rel') === rel);

if (urls.length !== new Set(urls).size) fail('Sitemap contains duplicate URLs');
if (urls.length < 1) fail('Sitemap has no URLs');
for (const url of urls) {
  let u;
  try { u = new URL(url); } catch { fail('Invalid sitemap URL: ' + url); continue; }
  if (u.origin !== domain) { fail('Unexpected sitemap domain: ' + url); continue; }
  const filename = sitePath(url);
  if (!existsSync(filename)) { fail('Missing HTML for sitemap URL ' + url); continue; }
  const html = readFileSync(filename, 'utf8');
  instances.set(url, html);
  const pageStylesheets = tags(html, 'link').filter((tag) => attribute(tag, 'rel') === 'stylesheet');
  const usesSharedCSS = pageStylesheets.some((tag) => /(?:^|\/)assets\/css\/style\.css(?:\?|$)/.test(attribute(tag, 'href') || ''));
  if (usesSharedCSS) {
    const hasFontLink = pageStylesheets.some((tag) => (attribute(tag, 'href') || '').startsWith('https://fonts.googleapis.com/css2?'));
    if (!hasFontLink) fail(url + ': Google Fonts CSS missing from document head');
    const connections = tags(html, 'link').filter((tag) => attribute(tag, 'rel') === 'preconnect').map((tag) => attribute(tag, 'href'));
    for (const origin of ['https://fonts.googleapis.com', 'https://fonts.gstatic.com'])
      if (!connections.includes(origin)) fail(url + ': missing font preconnect: ' + origin);
  }

  const title = html.match(/<title>([\s\S]*?)<\/title>/gi) ?? [];
  const h1 = html.match(/<h1\b/gi) ?? [];
  if (title.length !== 1 || !title[0].replace(/<[^>]*>/g, '').trim()) fail(url + ': expected one non-empty title');
  if (h1.length !== 1) fail(url + ': expected exactly one H1');
  const description = meta(html, 'name', 'description');
  if (!description || !attribute(description, 'content')) fail(url + ': missing meta description');
  const canonical = link(html, 'canonical');
  if (!canonical || attribute(canonical, 'href') !== url) fail(url + ': missing or incorrect self-canonical');
  for (const property of ['og:title', 'og:description', 'og:image', 'og:url']) {
    const m = meta(html, 'property', property);
    if (!m || !attribute(m, 'content')) fail(url + ': missing ' + property);
  }
  const robots = meta(html, 'name', 'robots');
  if (robots && /\bnoindex\b/i.test(attribute(robots, 'content') || '')) fail(url + ': sitemap page blocked from indexing');
  const images = tags(html, 'img');
  for (const image of images) if (attribute(image, 'alt') === null) fail(url + ': image is missing alt attribute');
  for (const tag of tags(html, 'a')) {
    const href = attribute(tag, 'href');
    if (!href || href[0] === '#') continue;
    let dest;
    try { dest = new URL(href, url); } catch { fail(url + ': invalid hyperlink ' + href); continue; }
    if (dest.origin !== domain || dest.pathname.startsWith('/api/') || dest.pathname.startsWith('/assets/')) continue;
    if (/\.(?:png|jpe?g|gif|svg|webp|pdf|xml|txt|ico)$/i.test(dest.pathname)) continue;
    if (!routes.has(normalized(dest.href))) fail(url + ': unknown internal link ' + href);
  }
  for (const match of html.matchAll(/<script\b[^>]*type=["']application\/ld\+json["'][^>]*>([\s\S]*?)<\/script>/gi)) {
    try { JSON.parse(match[1]); } catch { fail(url + ': invalid JSON-LD'); }
  }
  const alternates = tags(html, 'link').filter((tag) => attribute(tag, 'rel') === 'alternate' && attribute(tag, 'hreflang'));
  if (alternates.length) {
    for (const alternate of alternates) {
      const href = attribute(alternate, 'href');
      if (!href || !routes.has(normalized(href))) fail(url + ': invalid hreflang target ' + href);
    }
    for (const lang of ['en', 'pl']) if (!alternates.find((tag) => attribute(tag, 'hreflang') === lang)) fail(url + ': incomplete language alternatives (' + lang + ')');
  }
}
for (const [url, html] of instances) {
  const alts = tags(html, 'link').filter((tag) => attribute(tag, 'rel') === 'alternate' && ['en', 'pl'].includes(attribute(tag, 'hreflang')));
  for (const alt of alts) {
    const target = attribute(alt, 'href');
    const other = instances.get(target);
    if (!other) { fail(url + ': hreflang target not included in sitemap ' + target); continue; }
    const reciprocal = tags(other, 'link').some((t) => attribute(t, 'rel') === 'alternate' && attribute(t, 'href') === url);
    if (!reciprocal) fail(url + ': hreflang not reciprocal: ' + target);
  }
}
if (problems.length) {
  console.error('SEO validation failed (' + problems.length + ' issue(s)):');
  for (const problem of problems) console.error('- ' + problem);
  process.exitCode = 1;
} else {
  console.log('SEO validation passed: ' + urls.length + ' sitemap pages, metadata, internal links, images, JSON-LD and language pairs.');
}
