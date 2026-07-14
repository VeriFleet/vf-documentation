# Mail-OAuth (Microsoft 365 / Google)

Unter **Mail-OAuth** hinterlegen Systemadministratoren die systemweite OAuth-App-Konfiguration
für Microsoft 365 und Google Workspace. Sie ist die technische Grundlage für den
„Mit Microsoft verbinden"- bzw. „Mit Google verbinden"-Flow, mit dem einzelne Firmen ihr
eigenes Mailkonto als Absender anbinden.

![Mail-OAuth](images/mail-oauth.png){ border-effect="line" thumbnail="true" width="100%" }

!!! note
    Dieser Bereich ist nur für Benutzer mit der Rolle **Systemadministrator** sichtbar.
    Das firmeneigene Mailkonto selbst wird dagegen in der jeweiligen Firma unter
    **Firma bearbeiten** angebunden.

## Warum eigene Mail-Absender?

Standardmäßig versendet das System Prüfaufforderungen über den zentralen Mail-Dienst.
Firmen können stattdessen ihr **eigenes Postfach** (Microsoft 365 oder Google Workspace)
als Absender verwenden — die Fahrer erhalten Aufforderungen dann von einer vertrauten
Absenderadresse ihrer eigenen Organisation, was die Zustellrate und Akzeptanz deutlich
erhöht.

## Konfiguration

Je Anbieter (Microsoft / Google) hinterlegen Sie die Zugangsdaten der OAuth-App:

- **Client-ID** der in Azure AD bzw. Google Cloud registrierten Anwendung
- **Client-Secret** — wird verschlüsselt gespeichert
- ggf. weitere anbieterspezifische Angaben (z. B. Tenant)

Änderungen greifen **sofort, ohne Neustart** des Systems.

## Ablauf für eine Firma

1. Der Systemadministrator konfiguriert hier einmalig die OAuth-App.
2. Der Firmen-Administrator öffnet **Firma bearbeiten** und startet dort
   „Mit Microsoft/Google verbinden".
3. Nach der Anmeldung beim Anbieter versendet das System die Mails dieser Firma über das
   verbundene Postfach.
