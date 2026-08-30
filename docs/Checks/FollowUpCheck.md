## Nachkontrolle – Detailansicht

In der Detailansicht einer Nachkontrolle sehen Sie die erfassten Daten des überprüften Dokuments sowie die hochgeladenen Bilder.

### Warnmeldung

- **Dokument nicht erkannt**  
  Falls das System das Dokument nicht automatisch identifizieren kann, erscheint eine rote Warnmeldung. In diesem Fall ist eine manuelle Prüfung notwendig.

- **Dokumenttyp**  
  Der Dokumenttyp wird an der **Vorderseite** festgestellt (z. B. Personalausweis statt Führerschein → Nachkontrolle). Die Rückseite wird getrennt bewertet; ein nicht erkanntes Rückseiten-Bild allein führt nicht zur Ablehnung, wird aber als Hinweis angezeigt.

### Zusätzliche Daten

| Feld              | Beschreibung |
|-------------------|--------------|
| **Dok-Typ**        | Automatisch erkannter Dokumententyp (z. B. „Germany – Id Card (2021)“) |
| **FS-Nr.**         | Führerscheinnummer |
| **Vorname(n)**     | Vorname des Benutzers |
| **Nachname(n)**    | Nachname des Benutzers |
| **Geburtsdatum**   | Geburtsdatum des Benutzers |
| **Geburtsort**     | Geburtsort |
| **Ablaufdatum**    | Ablaufdatum des Dokuments |
| **Ausstellungsdaten** | Falls verfügbar: Datum, Behörde, Land |

### Klassen

Eine Übersicht der Führerscheinklassen – sofern erkannt – wird rechts angezeigt:

| Klasse | Datum | Ablauf | Beschränkungen |
|--------|-------|--------|----------------|
| *(keine Daten)* |

### Dokumentbilder

Zwei hochgeladene Fotos werden dargestellt:

- **Linkes Bild**: Erste Aufnahme
- **Rechtes Bild**: Zweite Aufnahme (zur Absicherung der Lesbarkeit)

### Aktionen

Am unteren Rand der Ansicht stehen drei Buttons zur Verfügung:

- ✅ **Kontrolle freigeben**  
  → Nachkontrolle als gültig bestätigen.

- ❌ **Kontrolle abbrechen**  
  → Prüfung wird abgelehnt, z. B. bei unleserlichem Dokument.

- 👤 **Benutzer bearbeiten**  
  → Direkt zur Bearbeitungsmaske des betreffenden Nutzers springen.

### Hinweis

Falls das System die Dokumentklasse nicht automatisch erkennen kann, sollte geprüft werden, ob die Bildqualität ausreichend ist. Ggf. ist eine neue Aufnahme erforderlich.


### Entscheidung

Prüfen Sie die hochgeladenen Bilder und die erfassten Daten und entscheiden Sie dann:

- **Genehmigen** — die Kontrolle gilt als erfolgreich abgeschlossen. Eine Begründung ist
  optional.
- **Ablehnen / Rückfrage** — die Kontrolle wird abgelehnt; eine Begründung (mindestens
  10 Zeichen) ist Pflicht und wird in der Historie gespeichert.

!!! note "Doppelte Nachkontrollen"
    Reicht ein Fahrer mehrfach Bilder ein, während bereits eine Nachkontrolle offen ist, schließt das System nach einer erfolgreichen Kontrolle die übrigen offenen Nachkontrollen desselben Fahrers automatisch. Sie müssen diese nicht einzeln bearbeiten.
