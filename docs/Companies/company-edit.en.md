# Edit a company

Manage the selected company here. The page is organised by task into **tabs**; the **"?" on a tab** opens its help page.

| Tab | Purpose | Who sees it |
|---|---|---|
| [Master data & services](company-edit-master-data.md) | Name, address, contact addresses, language, 2FA, booked services | everyone with access to the company |
| [Drivers & checks](company-edit-drivers.md) | Check rhythm, reminders, expiry warnings, escalation list | company administrators |
| [Communication](company-edit-communication.md) | Sender mailbox, email texts, details in the emails, retention | depending on permission |
| [Appearance](company-edit-appearance.md) | Logo, colors, email look | "Corporate identity" permission |
| [Platform](company-edit-platform.md) | Billing, data source, automatic check, technical settings | platform administrators or the respective permission |

Tabs from "Communication" onwards exist for **subsidiaries** only.

## Same operation everywhere

**Inherit or own value.** Every setting a subsidiary can take over from its parent company offers
**"Inherit"** / **"Own value"**. With "Inherit" the page shows what applies and where it comes from, for example
"↳ Inherited from Fleet Partner GmbH: 7 days". If nothing is set anywhere up the chain, the default applies. A tab
title with "n customised" shows how many settings the company sets itself.

**Saving.** All changes apply only after **"Save"** (top right in the page header, with a count of unsaved
changes). If you leave the page with unsaved changes, the system asks first. What takes effect **immediately**
without saving is marked **"takes effect immediately"** (data source, API keys, email templates, connecting or
deleting a mailbox).

**Other actions:** create a subsidiary, import a subsidiary from Carano, delete the company (with permission only;
deletes the company and all its users irreversibly).

## Guides

- [Set up a new customer company](guide-new-customer.md)
- [Set up reminders and escalation](guide-reminders-escalation.md)
- [Own mailbox as sender](guide-own-mailbox.md)
