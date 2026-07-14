import { chromium } from 'playwright';

const BASE = process.env.BASE || 'http://localhost:5001';
const EMAIL = process.env.EMAIL || 'contact@pjacobs.eu';
const PW = process.env.PW || 'dds2023!';
const OUT = process.env.OUT || './out';
const ONLY = process.env.ONLY;          // optional: eine einzelne Route testen
const LANGS = (process.env.LANGS || 'de').split(',');

// Route -> Screenshot-Name. fullPage, wartet auf Netzwerk-Ruhe + Render.
const ROUTES = [
  ['dashboard', 'dashboard'],
  ['user', 'user-list'],
  ['company', 'company-list'],
  ['reporting', 'reporting'],
  ['manual-checkup-required', 'nachkontrolle-queue'],
  ['invoices', 'invoices'],
  ['settings', 'settings'],
  ['admin/mail-oauth', 'mail-oauth'],
];

const CULTURE = { de: 'c=de-DE|uic=de-DE', en: 'c=en-US|uic=en-US' };

async function login() {
  const r = await fetch(`${BASE}/api/auth`, {
    method: 'POST', headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ Email: EMAIL, Password: PW }),
  });
  if (!r.ok) throw new Error(`Login fehlgeschlagen: ${r.status}`);
  const j = await r.json();
  return j.id || j.Id;
}

const routes = ONLY ? ROUTES.filter(([p]) => p === ONLY) : ROUTES;

const token = await login();
console.log('Token:', token.slice(0, 8) + '…');

const browser = await chromium.launch();
for (const lang of LANGS) {
  const context = await browser.newContext({
    viewport: { width: 1440, height: 900 },
    deviceScaleFactor: 2,
    locale: lang === 'en' ? 'en-US' : 'de-DE',
  });
  // Culture-Cookie (RequestLocalization) + authToken im LocalStorage vor jedem Load setzen.
  await context.addCookies([{
    name: '.AspNetCore.Culture', value: CULTURE[lang], url: BASE,
  }]);
  await context.addInitScript((t) => { localStorage.setItem('authToken', t); }, token);

  const page = await context.newPage();
  for (const [route, name] of routes) {
    const url = `${BASE}/${route}`;
    try {
      await page.goto(url, { waitUntil: 'networkidle', timeout: 20000 });
      await page.waitForTimeout(2500); // Blazor/SignalR-Render abwarten
      const file = `${OUT}/${lang}/${name}.png`;
      await page.screenshot({ path: file, fullPage: true });
      console.log(`  [${lang}] ${route} -> ${file}`);
    } catch (e) {
      console.error(`  [${lang}] ${route} FEHLER: ${e.message}`);
    }
  }
  await context.close();
}
await browser.close();
console.log('fertig.');
