# Abrechnung

Der Bereich **Abrechnung** erzeugt die monatlichen Rechnungsdaten für alle Firmen im
System. Grundlage sind die je Firma gebuchten Services und die im Abrechnungsmonat
angefallenen Kontrollen.

![Abrechnung](images/invoices.png){ border-effect="line" thumbnail="true" width="100%" }

!!! note
    Dieser Bereich ist nur für Benutzer mit der Rolle **Systemadministrator** sichtbar.

## Rechnungslauf ausführen

1. Wählen Sie Monat und Jahr des Abrechnungszeitraums.
2. Starten Sie die Generierung — das System berechnet für jede Firma die
   Rechnungspositionen aus den gebuchten Services.
3. Die Voransicht zeigt die erzeugten Daten vor dem Export an.

## Export

- **Excel (XLSX):** Jede Firma erhält ein eigenes Arbeitsblatt mit Firmenkopfdaten
  (Name, Anschrift), Abrechnungsmonat und allen Positionen (Beschreibung, Anzahl,
  Einheit, Einzel- und Gesamtpreis).
- **JSON:** Vollständige Rechnungsdaten in maschinenlesbarer Form zur Weiterverarbeitung
  in Ihrer Buchhaltung.

## Abrechnungseinstellungen je Firma

Wie eine Firma abgerechnet wird, legen Sie in der jeweiligen Firma unter
**Firma bearbeiten → Abrechnungseinstellungen** fest:

| Einstellung | Bedeutung |
|---|---|
| **Keine Abrechnung** | Die Firma taucht im Rechnungslauf nicht auf. |
| **Individuell** | Die Firma wird mit eigenen Konditionen abgerechnet. |
| **Vererbt** | Die Firma übernimmt die Abrechnungseinstellungen ihrer übergeordneten Firma. |
