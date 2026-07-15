# NFC-Siegel (alte Führerscheine)

Für Papierführerscheine ohne moderne Sicherheitsmerkmale nutzt das System
**fälschungssichere NFC-Siegel**: Ein spezielles Siegel mit NFC-Chip wird einmalig auf dem
Führerschein angebracht. Die Kontrolle erfolgt danach durch einfaches Scannen des Siegels
mit dem Smartphone — schneller und sicherer als ein Foto-Upload.

## Siegel-Nummer hinterlegen

Damit ein Fahrer per NFC-Siegel geprüft werden kann, muss die Siegel-Nummer in seinen
Stammdaten hinterlegt sein:

1. Öffnen Sie die **Benutzer-Detailansicht** des Fahrers.
2. Tragen Sie im Feld **Sicherheitssiegel** die 14-stellige Kennung des Siegels ein
   (Hexadezimal-Zeichen 0–9, A–F).
3. Speichern Sie den Benutzer.

## Ablauf der Kontrolle

1. Der Fahrer erhält wie gewohnt eine Prüfaufforderung per E-Mail oder SMS.
2. Statt den Führerschein zu fotografieren, hält er sein Smartphone an das NFC-Siegel.
3. Das Siegel überträgt eine **verschlüsselte, einmalige Kennung** an das System.
4. Das System entschlüsselt die Kennung, gleicht sie mit der hinterlegten Siegel-Nummer
   ab und schließt die Kontrolle bei Übereinstimmung automatisch erfolgreich ab.

## Sicherheitsmerkmale

- **Kopierschutz:** Jeder Scan enthält einen mitlaufenden Zähler. Aufgezeichnete oder
  kopierte Scans werden erkannt und abgewiesen.
- **Zerstörungsfreies Entfernen unmöglich:** Das Siegel lässt sich nicht unbeschädigt vom
  Führerschein ablösen. Ein Manipulationsversuch ist sofort sichtbar.
- **Verschlüsselung:** Die Kommunikation zwischen Siegel und System ist verschlüsselt;
  die Siegel-Kennung selbst ist nicht auslesbar reproduzierbar.

!!! note
    Fahrer benötigen ein NFC-fähiges Smartphone (Standard bei allen aktuellen Geräten).
    Steht kein NFC zur Verfügung, bleibt die Foto-Kontrolle als Weg bestehen.
