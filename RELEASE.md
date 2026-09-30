# Änderungsprotokoll — vf-documentation

> Liegt bewusst im Repo-Root (nicht unter `docs/`), da `docs/` das MkDocs-Quellverzeichnis
> der veröffentlichten Kunden-Dokumentation ist. Neueste Einträge oben.

### 2026-09-30 · docs — Fahrerdaten & Schnittstelle: Datenquelle je Firma, API-Schlüssel (de + en)

- **Branch:** `docs/driver-data-source-api-keys`, noch nicht auf `main` (ein Push auf `main` baut
  das Produktions-Image der Doku). Gehört zu VeriFleet #91, #92, #89 und #90 (Teil 1); die
  Oberfläche dazu entsteht parallel — Screenshots folgen, sobald sie steht.
- **Neu:** Seite **„Fahrerdaten & Schnittstelle“** / „Driver data & interface“
  (`Companies/company-driver-data`) — Datenquelle der Fahrer (Übernehmen / Manuell / Carano /
  REST-API) mit Vererbung und Bestätigungsdialog, Wirkung jeder Umstellung, Carano-Zugangsdaten
  ohne Passwortanzeige, API-Schlüssel (Übersicht, Erzeugen, technischer API-Benutzer, Widerrufen),
  Übergangsschalter für die Passwort-Anmeldung an der API mit empfohlenem Vorgehen, Nutzung des
  Schlüssels durch die Kunden-IT, Oberfläche ohne API-Sitzungen. In der Navigation unter „Firmen“
  (alle drei Mandanten über `mkdocs.base.yml`), mit englischer Nav-Übersetzung.
- **Angepasst:** Carano-Anbindung (Voraussetzung Datenquelle „Carano“, neuer Abschnittsname,
  Passwortfeld), Firma bearbeiten (Abschnittsliste, Ausnahme von „Speichern“), Firmenverwaltung.
- Build aller 3 Mandanten `--strict`-sauber.

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
