# Änderungsprotokoll — vf-documentation

> Liegt bewusst im Repo-Root (nicht unter `docs/`), da `docs/` das MkDocs-Quellverzeichnis
> der veröffentlichten Kunden-Dokumentation ist. Neueste Einträge oben.

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
