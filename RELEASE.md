# Änderungsprotokoll — vf-documentation

> Liegt bewusst im Repo-Root (nicht unter `docs/`), da `docs/` das MkDocs-Quellverzeichnis
> der veröffentlichten Kunden-Dokumentation ist. Neueste Einträge oben.

### 2026-09-26 · fix — Eingebettete Doku folgt der Anwendung: feste helle Palette, kein Sprachwechsler

- **Branch:** `fix/embedded-help-follows-app` (`ed4383c`). **Noch nicht auf `main`** — ein Push
  dorthin rollt automatisch nach Produktion; Freigabe des Eigentümers steht aus.
- **Anlass:** Im Hilfe-Panel des AdminPanels (Radzen-11-Branch) folgte die Doku dem
  System-Dunkelmodus, die Anwendung nicht; zusätzlich bot die Doku eigene Umschalter für
  Design und Sprache. Entscheidung des Eigentümers: beides gehört nur in die Hauptanwendung.
- **Änderung:** `mkdocs.base.yml` — eine Palette (`scheme: default`, ohne `media`/`toggle`);
  `docs/stylesheets/extra.css` blendet `.md-header__option` (Sprachwechsler von
  mkdocs-static-i18n) aus. Die Sprache wählt das Gateway über den Pfad (`/en/`).
- **Staging:** Image lokal gebaut (`docker build --platform linux/amd64 -t verifleet-docs:test .`),
  per `docker save | ssh … docker load` auf `hetzner-verifleet-test` und nur den Container `docs`
  neu gestartet (`docker compose -f docker-compose.test.yml up -d docs`); App unberührt.
- **Rollback:** vorheriges Image `dfb11bc…` (15.07.) auf dem Testserver, `up -d docs` damit.

### 2026-08-30 · deploy · fix — Erster Prod-Rollout des Doku-Containers; Healthcheck auf IPv4

- **deploy (Prod `server_hosting_stack`):** Service `docs` mit Image
  `ghcr.io/verifleet/verifleet-docs:270372e…` und internem Netz `docs` in die Compose
  aufgenommen (Backup `docker-compose.yml.bak.20260830-183003`); Backend ans Netz gehängt.
  Hilfe-Panel unter `admin.verifleet.de/hilfe` vom Owner abgenommen.
- **fix (`deploy/deploy-docs.sh`, `deploy/README.md`):** Healthcheck ruft `127.0.0.1` statt
  `localhost` auf — nginx im Container lauscht nur auf IPv4, `localhost` löste nach `::1` auf
  und der Container galt als *unhealthy*. Gleiche Korrektur in der Prod-Compose und in
  `verifleet/docker-compose.test.yml`.

### 2026-08-30 · docs — Ergänzungen für VeriFleet Release 2 (de + en)

- **Benutzer bearbeiten:** Mobil-Telefonnummer im internationalen Format (E.164, automatische
  Normalisierung), Pflicht „mindestens ein Kontaktweg", neues Feld **Bevorzugter Kontaktkanal**
  (Standard (Firma) / E-Mail / SMS mit Rückfall), Historie-Eintrag **„Aufforderung erneut
  versandt"** mit Detailfeldern (Kontrollart, Zustellung, Kanal/Empfänger, Ausgelöst über) und
  15-Minuten-Wartezeit.
- **Firma bearbeiten:** **Standard-Kontaktkanal** (Erben / E-Mail / SMS) in „Erinnerungen &
  Führerschein-Ablauf", Vererbung und Fahrer-Override erklärt.
- **Nachkontrolle:** Dokumenttyp-Prüfung an der Vorderseite, Rückseite separat; automatisches
  Schließen doppelter Nachkontrollen nach erfolgreicher Kontrolle.
- Bewusst **nicht** dokumentiert: der abweichende Kontrollempfänger (in der Oberfläche
  ausgeblendet, VeriFleet #61).

### 2026-07-14 · docs — Komplette inhaltliche Neuauflage (de + en)

- **Neu (9 Seiten × 2 Sprachen):** Reporting (6 Auswertungs-Tabs), Einstellungen/eigene
  Rollen, Abrechnung, Mail-OAuth, Zwei-Faktor-Authentifizierung, UVV-Unterweisung
  (E-Learning/Dekra), Fahrerqualifikationsnachweis (FQN), Design & Branding
  (Mandanten-CI mit Vererbung), NFC-Siegel.
- **Englische Fassung** aller 17 Bestandsseiten ergänzt (`*.en.md`, Suffix-Struktur).
- **Bestandsseiten aktualisiert:** Nachkontrolle-Detail um die Entscheidungslogik
  (Genehmigen = Begründung optional, Ablehnen = Pflicht ≥ 10 Zeichen) ergänzt; neue
  Screenshots (Dashboard, Benutzerliste, Nachkontroll-Queue) aus der
  Screenshot-Automatik (`tools/`); Querverweise auf die neuen Seiten.
- **Navigation** um die Sektionen Prüfarten, Reporting und Administration erweitert,
  inkl. englischer Nav-Übersetzungen.
- **Screenshots:** DSGVO-konform aus synthetischen Demo-Daten erzeugt, je Sprache
  lokalisiert (`bild.png` = de, `bild.en.png` = en).
- Build aller 3 Mandanten `--strict`-sauber; Docker-Smoke-Test bestanden.

### 2026-07-14 · infra — Repo-Sanierung & Self-Hosted-Deploy (Commits `157222d`, `53ec3fa`, `c06a2b5`)

- mkdocs-Konfiguration auf `mkdocs.base.yml` + Mandanten-Overlays (`INHERIT`) umgestellt;
  Mehrsprachigkeit via `mkdocs-static-i18n`; GitHub-Pages-Workflows ersetzt durch
  Container-Deploy (GHCR → SSH mit Forced Command); Screenshot-/Demo-Daten-Tooling
  unter `tools/`.
