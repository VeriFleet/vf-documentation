# Reiter „Kommunikation“

Über welches Postfach Mails verschickt werden, was darin steht und wie lange Kopien bleiben.

!!! note "Wer sieht welchen Abschnitt?"
    Den Reiter gibt es nur bei bestehenden Tochterfirmen, sobald Sie einen seiner Abschnitte sehen dürfen.
    **Absender der Mails**: Recht `ManageMailIntegration` (Administrator oder benutzerdefinierte Rolle) ·
    **Mail-Texte**: `ManageMailTemplates` (Fuhrparkleiter und Administrator) · **Angaben in den Mails**:
    `AlterCorporateIdentity` · **Aufbewahrung des Mail-Archivs**: `ManageCompany` (Fuhrparkleiter und Administrator).

## Absender der Mails

Über das hier gewählte Postfach verschickt VeriFleet die Mails dieser Firma und ihrer Tochterfirmen, zum Beispiel
Aufforderungen, Erinnerungen und Eskalationslisten. Die Fahrer sehen die Adresse des Postfachs als Absender.

| Auswahl | Was passiert |
|---|---|
| **Übernehmen** | Die Mails gehen über das Postfach der nächsthöheren Firma, die eines hat, sonst über das **VeriFleet-Postfach**. Darunter steht, welches Postfach gilt und woher es kommt. |
| **Eigenes Postfach** | Die Mails kommen von einer Adresse Ihrer Firma, zum Beispiel `fuehrerschein@ihre-firma.de`. Tochterfirmen ohne eigenes Postfach nutzen es mit. |

### Eigenes Postfach verbinden

Wählen Sie die Kachel, die zu Ihrem Mailsystem passt:

| Kachel | Wann | Was Sie tun |
|---|---|---|
| **Microsoft 365** („Mit Microsoft verbinden“) | Ihre Firma nutzt Microsoft 365 / Exchange Online. | Sie melden sich einmal mit dem Postfach an, das als Absender dienen soll, und erlauben VeriFleet den Versand. |
| **Google Workspace** („Mit Google verbinden“) | Ihre Firma nutzt Google Workspace (Gmail). | Wie bei Microsoft. Google verlangt eine App-Verifizierung; bis dahin erscheint beim Verbinden eine Warnung. |
| **SMTP** („Manuell einrichten“) | Jeder andere Mailserver. | Sie tragen Server, Port, Benutzer und Passwort selbst ein, am besten mit Ihrer IT. |

Ist die Anmeldung über Microsoft oder Google noch nicht eingerichtet, sind die Schaltflächen gesperrt und ein Hinweis
nennt Ihren Ansprechpartner bei VeriFleet. Beim ersten Verbinden werden Ihre offenen Änderungen vorher gespeichert.
Verbunden zeigt der Abschnitt **„Verbunden als …“**, Anbieter und Anmeldeart, den **letzten erfolgreichen Versand**,
den **letzten Fehler** und die Versandgrenze; mit **„Neu verbinden“** erneuern Sie die Anmeldung.

Die Schritte stehen in der Anleitung [Eigenes Postfach als Absender](guide-own-mailbox.md).

### Experten: Dienstkonto und SMTP-Server

Nur nötig, wenn die Anmeldung per Klick nicht passt oder Ihre IT ein Dienstkonto bzw. einen eigenen Mailserver
vorgibt. Der Bereich ist zugeklappt; **„Manuell einrichten“** wählt dort SMTP vor.

| Feld | Was es bedeutet |
|---|---|
| **Anbieter** | Über welchen Dienst gesendet wird: Microsoft 365, Google Workspace oder SMTP. |
| **Authentifizierungsmodus** | „Verbundenes Benutzerkonto (OAuth)“: Anmeldung per Klick. „App-Berechtigung (IT-Administration)“: ein Dienstkonto, das Ihre IT einrichtet. „Benutzername/Passwort“: direkt am Mailserver (SMTP). |
| **Absenderadresse** | Diese Adresse sehen die Fahrer als Absender. Sie muss zum Postfach gehören (SMTP-Server lehnen fremde Absender oft ab). Beim Verbinden trägt VeriFleet sie selbst ein; bei SMTP und Google ist sie Pflicht. |
| **Anzeigename** | Der Name neben der Adresse, zum Beispiel „Fuhrpark Muster GmbH“. Leer = Produktname aus „Angaben in den Mails“. Beim Verbinden übernimmt VeriFleet den Namen des Kontos, wenn das Feld leer ist. |
| **Tenant-ID**, **Client-ID**, **Client-Secret** (Microsoft, App-Berechtigung) | Kennung Ihrer Microsoft-365-Organisation, Kennung der App, die Ihre IT für VeriFleet angelegt hat (App-Registrierung), und deren Kennwort. |
| **Mailbox (Impersonation)** | Microsoft: das Postfach, in dessen Namen die App sendet; leer = Absenderadresse. Google: Pflicht, das Postfach, in dessen Namen das Dienstkonto sendet. |
| **Service-Account JSON** (Google, App-Berechtigung) | Der Schlüssel des Google-Dienstkontos; den kompletten Inhalt der JSON-Datei einfügen. Die „domänenweite Delegierung“ muss Ihre IT erteilt haben. |
| **SMTP-Server**, **SMTP-Port** | Adresse des Mailservers und Port (Voreinstellung 587). |
| **SMTP-Benutzer**, **SMTP-Passwort** | Anmeldung am Mailserver; der Benutzer ist oft die E-Mail-Adresse. |
| **STARTTLS verwenden** | Verschlüsselt die Verbindung zum Mailserver (Voreinstellung an). Nur auf Anweisung Ihrer IT ausschalten. |

Geheime Werte (Client-Secret, Service-Account JSON, SMTP-Passwort) werden verschlüsselt gespeichert und nie angezeigt.
Das Feld bleibt leer; leer lassen behält den gespeicherten Wert, ein neuer Wert ersetzt ihn.

**Versandgrenzen.** Zwei Felder **„Max. Mails je Minute“** und **„Max. Mails je 24 h“** begrenzen, wie viele Mails
VeriFleet über dieses Postfach schickt, damit der Anbieter es nicht drosselt oder sperrt (Microsoft erlaubt höchstens
30 pro Minute und 10.000 Empfänger pro 24 Stunden). Leer = Standardwert, der in der Beschriftung steht (derzeit 12 pro
Minute und 2.000 pro 24 Stunden); erlaubt sind 1 bis 30 bzw. 1 bis 10.000. Ist die Grenze erreicht, wartet VeriFleet und
liefert den Rest in den nächsten 5-Minuten-Läufen nach. Die Grenzen gelten für alle Firmen, die dieses Postfach nutzen;
der Abschnitt zeigt, wie viele es sind. Ein Drosselhinweis erscheint, wenn der Anbieter selbst gebremst hat.

### Test-Mail, Speichern und Löschen

| Schaltfläche | Was sie macht |
|---|---|
| **Test-Mail senden** (mit Empfänger) | Schickt eine kurze Test-Mail über das **aktuell wirksame** Postfach, auch bei „Übernehmen“ (dann über das geerbte oder das VeriFleet-Postfach). Bei einem eigenen Postfach werden die Angaben vorher gespeichert. |
| **Mail-Konto speichern** | Speichert nur das Postfach dieser Firma, ohne „Speichern“ oben rechts. Dasselbe passiert auch mit „Speichern“ der Seite. Ein per OAuth verbundenes Konto lässt sich so nicht anlegen, dafür ist „Verbinden“ da. |
| **Verbindung löschen** | Entfernt das gespeicherte Postfach samt Zugangsdaten und Einstellungen nach einer Rückfrage. Danach gehen die Mails über das Postfach der Mutterfirma oder das VeriFleet-Postfach. |

Diese drei Schaltflächen **wirken sofort** und sind entsprechend gekennzeichnet. Das ist nötig, weil Verbinden und
Test-Mail ein gespeichertes Postfach brauchen und Löschen nicht erst auf „Speichern“ warten soll.

## Mail-Texte

Ein Katalog **„Alle Mails & Stufen“** aller Mails, die VeriFleet für die Firma verschickt, mit Auslöser, Stufe und
Status. Je Mail: **Ansehen** (Vorschau mit Beispieldaten, nichts wird versendet) und **Überschreiben** bzw. **Anlegen**;
darunter die **eigenen Vorlagen dieser Firma** mit **„Neue Vorlage anlegen“**.

| Status | Bedeutung |
|---|---|
| **Eigene Vorlage** | Diese Firma hat einen eigenen Text. |
| **Übernommen** | Der Text einer Mutterfirma gilt. |
| **System-Standard** | Eine mitgelieferte Systemvorlage gilt, solange keine eigene angelegt ist. |
| **Standard** | Das eingebaute Standard-Layout mit den Angaben dieser Firma gilt. |
| **Optional** | Es gibt keinen Standardtext; die Mail wird nur mit eigener Vorlage verschickt. |
| **Vorlage erforderlich** | Es gibt keinen Standardtext; **ohne eigene Vorlage wird diese Mail nicht versendet.** |

Eine angepasste Vorlage gilt auch für die Tochterfirmen, solange diese keine eigene haben. Die Tage der Stufen richten
sich nach dem [Abstand der Erinnerungen](company-edit-drivers.md). Der Abschnitt **wirkt sofort**.

## Angaben in den Mails

Produktname, Support-Adresse, Impressum und Datenschutz, wie sie in den Mails an Fahrer stehen.

| Einstellung | Was sie bewirkt |
|---|---|
| **Produktname** | Name der Software in den Mails; auch der Absendername, wenn kein Anzeigename gesetzt ist. |
| **Support-E-Mail** | Kontaktadresse in Mails und im Profil-Menü („Support“). |
| **Impressum-URL**, **Datenschutz-URL** | Links in der Fußzeile der Mails. |

Wählen Sie **„Übernehmen“** (Standard) oder **„Eigene Angaben festlegen“**. Beim Umschalten sind die Felder bereits mit den
Werten der Mutterfirma (bzw. dem Standard, wenn keine Mutterfirma eigene hat) gefüllt; alle vier Felder sind Pflicht. Mit
„Eigene Angaben festlegen“ werden auch die [technischen Mail-Einstellungen](company-edit-platform.md) und das
[Mail-Aussehen](company-edit-appearance.md) änderbar.

## Aufbewahrung des Mail-Archivs

**Archivierte Mails löschen nach** 14 bis 90 Tagen: Danach werden die Kopien der verschickten Mails automatisch gelöscht
(DSGVO). Betroffen ist nur das Mail-Archiv, nicht Kontrollen und Bilder. Standard: 14 Tage; wählbar **„Übernehmen“** oder
**„Eigener Wert“**.
