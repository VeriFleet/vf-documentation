# Tab "Communication"

Which mailbox sends the emails, what they contain and how long copies are kept.

!!! note "Who sees which section?"
    The tab appears as soon as you may see one of its sections. **Sender of the emails**: "Mail account"
    permission · **Email texts**: "Mail templates" · **Details in the emails**: "Corporate identity" ·
    **Retention**: "Manage company".

## Sender of the emails

Choose whether the company sends through the **VeriFleet mailbox** (or its parent company's mailbox) or through
**its own mailbox**. Connect an own mailbox with **Microsoft** (Microsoft 365), **Google** (Workspace) or manually
via SMTP; the steps are in the guide [Own mailbox as sender](guide-own-mailbox.md).

The section **takes effect immediately**: connecting, test sending and "Delete connection" need no "Save". Unsaved
changes of the page are saved before connecting. After **Delete connection** sending goes through the parent
company's mailbox or the VeriFleet mailbox again.

## Email texts

A catalogue of all emails VeriFleet sends for the company, with trigger, stage and status (*Own template*,
*Inherited*, *System default*). Per email: **View** (preview with sample data, nothing is sent), **Customise** or
**Override**. A customised template also applies to subsidiaries as long as they have none of their own. The
section **takes effect immediately**.

## Details in the emails

| Setting | Effect |
|---|---|
| **Product name** | Name of the software in the emails |
| **Support email** | Contact address in emails and the profile menu |
| **Imprint URL**, **Privacy URL** | Links in the footer of the emails |

Choose **"Inherit"** (default) or **"Own value"**. When you switch to "Own value", the fields are prefilled with the
parent company's values; all fields are required. Logo and colors of the emails are set under
[Appearance](company-edit-appearance.md), software addresses under [Platform › Technical](company-edit-platform.md).

## Retention of the email archive

Copies of sent emails are deleted automatically after **14 to 90 days** (GDPR). Only the email archive is affected,
not checks and images. Default: 14 days, can be inherited from the parent company.
