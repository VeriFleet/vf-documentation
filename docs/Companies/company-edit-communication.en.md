# Tab "Communication"

Which mailbox sends the emails, what they contain and how long copies are kept.

!!! note "Who sees which section?"
    The tab exists for existing subsidiaries only, as soon as you may see one of its sections.
    **Mail sender**: `ManageMailIntegration` permission (administrator or custom role) · **Mail texts**:
    `ManageMailTemplates` (fleet manager and administrator) · **Details in the emails**: `AlterCorporateIdentity` ·
    **Mail archive retention**: `ManageCompany` (fleet manager and administrator).

## Mail sender

VeriFleet sends the mails of this company and its subsidiaries through the mailbox chosen here, for example requests,
reminders and escalation lists. Drivers see the mailbox address as the sender.

| Choice | What happens |
|---|---|
| **Inherit** | Mails go through the mailbox of the nearest parent company that has one, otherwise through the **VeriFleet mailbox**. The line below shows which mailbox applies and where it comes from. |
| **Own mailbox** | Mails come from an address of your company, for example `fleet@your-company.com`. Subsidiaries without an own mailbox use it too. |

### Connecting an own mailbox

Pick the tile that matches your mail system:

| Tile | When | What you do |
|---|---|---|
| **Microsoft 365** ("Connect with Microsoft") | Your company uses Microsoft 365 / Exchange Online. | You sign in once with the mailbox that should be the sender and allow VeriFleet to send. |
| **Google Workspace** ("Connect with Google") | Your company uses Google Workspace (Gmail). | As with Microsoft. Google requires an app verification; until then a warning appears when connecting. |
| **SMTP** ("Set up manually") | Any other mail server. | You enter server, port, user and password yourself, ideally together with your IT. |

If sign-in via Microsoft or Google is not set up yet, the buttons are locked and a notice names your contact at VeriFleet.
When you connect, your open changes are saved first. Once connected, the section shows **"Connected as …"**, provider and
sign-in type, the **last successful send**, the **last error** and the sending limit; **"Reconnect"** renews the sign-in.

The steps are in the guide [Own mailbox as sender](guide-own-mailbox.md).

### Experts: service account and SMTP server

Only needed if signing in with one click does not fit or your IT requires a service account or an own mail server. The area
is collapsed; **"Set up manually"** preselects SMTP there.

| Field | What it means |
|---|---|
| **Provider** | Which service sends: Microsoft 365, Google Workspace or SMTP. |
| **Authentication mode** | "Connected user account (OAuth)": sign-in with one click. "App permission (IT administration)": a service account set up by your IT. "Username/password": directly at the mail server (SMTP). |
| **From address** | Drivers see this address as the sender. It must belong to the mailbox (SMTP servers often reject foreign senders). When connecting, VeriFleet fills it in itself; it is required for SMTP and Google. |
| **Display name** | The name next to the address, for example "Fleet Muster Ltd". Empty = product name from "Details in the emails". When connecting, VeriFleet takes the account's name if the field is empty. |
| **Tenant ID**, **Client ID**, **Client secret** (Microsoft, app permission) | Identifier of your Microsoft 365 organization, identifier of the app your IT created for VeriFleet (app registration), and its password. |
| **Mailbox (impersonation)** | Microsoft: the mailbox the app sends on behalf of; empty = from address. Google: required, the mailbox the service account sends on behalf of. |
| **Service account JSON** (Google, app permission) | The key of the Google service account; paste the complete content of the JSON file. Your IT must have granted "domain-wide delegation". |
| **SMTP host**, **SMTP port** | Address of the mail server and port (preset 587). |
| **SMTP user**, **SMTP password** | Sign-in at the mail server; the user is often the e-mail address. |
| **Use STARTTLS** | Encrypts the connection to the mail server (preset on). Switch off only on your IT's instruction. |

Secret values (client secret, service account JSON, SMTP password) are stored encrypted and never displayed. The field stays
empty; leaving it empty keeps the stored value, a new value replaces it.

**Sending limits.** The two fields **"Max. mails per minute"** and **"Max. mails per 24 h"** limit how many mails VeriFleet
sends through this mailbox so the provider does not throttle or block it (Microsoft allows at most 30 per minute and 10,000
recipients per 24 hours). Empty = default shown in the label (currently 12 per minute and 2,000 per 24 hours); allowed are
1 to 30 and 1 to 10,000. When the limit is reached, VeriFleet waits and delivers the rest in the next 5-minute runs. The
limits apply to all companies that use this mailbox; the section shows how many there are. A throttle notice appears when the
provider itself slowed sending down.

### Test mail, saving and deleting

| Button | What it does |
|---|---|
| **Send test mail** (with recipient) | Sends a short test mail through the **currently effective** mailbox, also with "Inherit" (then through the inherited or the VeriFleet mailbox). For an own mailbox, the settings are saved first. |
| **Save mail account** | Saves only this company's mailbox, without "Save" at the top right. "Save" of the page does the same. An account connected via OAuth cannot be created this way; that is what "Connect" is for. |
| **Delete connection** | Removes the stored mailbox including credentials and settings after a confirmation. Afterwards mails go through the parent company's mailbox or the VeriFleet mailbox. |

These three buttons **take effect immediately** and are marked accordingly. That is necessary because connecting and the test
mail need a stored mailbox and deleting should not wait for "Save".

## Mail texts

A catalogue **"All mails & stages"** of all mails VeriFleet sends for the company, with trigger, stage and status. Per mail:
**View** (preview with sample data, nothing is sent) and **Override** or **Create**; below it **this company's own
templates** with **"Create new template"**.

| Status | Meaning |
|---|---|
| **Custom template** | This company has its own text. |
| **Inherited** | A parent company's text applies. |
| **System default** | A built-in system template applies until you create your own. |
| **Default** | The built-in standard layout with this company's details applies. |
| **Optional** | There is no default text; the mail is only sent with an own template. |
| **Template required** | There is no default text; **without an own template this mail is not sent.** |

A customized template also applies to the subsidiaries as long as they have none of their own. The days of the stages follow
the [reminder interval](company-edit-drivers.md). The section **takes effect immediately**.

## Details in the emails

Product name, support address, imprint and data protection as they appear in the mails to drivers.

| Setting | What it does |
|---|---|
| **Product name** | Name of the software in the mails; also the sender name when no display name is set. |
| **Support e-mail** | Contact address in mails and in the profile menu ("Support"). |
| **URL Imprint**, **Data protection URL** | Links in the footer of the mails. |

Choose **"Inherit"** (default) or **"Set own details"**. When you switch, the fields are already filled with the parent
company's values (or the default if no parent has its own); all four fields are required. With "Set own details" the
[technical mail settings](company-edit-platform.md) and the [look of the mails](company-edit-appearance.md) become editable
as well.

## Mail archive retention

**Delete archived mails after** 14 to 90 days: afterwards the copies of the sent mails are deleted automatically (GDPR).
Only the mail archive is affected, not checks and images. Default: 14 days; choose **"Inherit"** or **"Own value"**.
