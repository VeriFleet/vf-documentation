# Edit a company

Manage the selected company here. The page is organised by task into **tabs**; the **"?" on a tab** opens its help page.

| Tab | Purpose | Who sees it |
|---|---|---|
| [Master data & services](company-edit-master-data.md) | Name, address, contact addresses, language, 2FA, booked services | everyone with access to the company |
| [Drivers & checks](company-edit-drivers.md) | Check interval, reminders, expiry warnings, escalation list | everyone with access to the company; the sections after the check interval only with the `ManageCompany` permission and only for subsidiaries |
| [Communication](company-edit-communication.md) | Mail sender, mail texts, details in the emails, retention | subsidiaries, as soon as one section is visible |
| [Appearance](company-edit-appearance.md) | Logo, colours, look of the emails | subsidiaries, `AlterCorporateIdentity` permission |
| [Platform](company-edit-platform.md) | Billing, data source, automatic review, technical settings | subsidiaries, as soon as one section is visible; marked "admins only" |

The tabs "Communication", "Appearance" and "Platform" exist for **subsidiaries** only; "Communication" additionally only
once the company has been created.

!!! note "Permissions"
    Which sections you see depends on your permissions. The **Administrator** role has all permissions, a
    **fleet manager** has `ManageCompany` and `ManageMailTemplates`, among others. An administrator grants further
    permissions through custom roles under **System › Settings**, where the permissions appear under exactly these
    names. Each section page names the permission it needs.

## Same operation everywhere

**Inherit or own value.** Every setting a subsidiary can take over from its parent company offers the choice
**"Inherit"** / **"Own value"** (depending on the setting also "Own appearance", "Own weighting" or "Set own details").
With "Inherit" the line below shows what applies and where it comes from, for example "↳ Inherited from Fleet Partner
GmbH: 7 days". If nothing is set anywhere in the chain, the default applies. On the tab title "n customized" shows how many
settings the company sets itself.

**Saving.** All changes apply only after **"Save"** (top right in the page header, with a count of unsaved changes and
"Reset"). If you leave the page with unsaved changes, the system asks first. What takes effect **immediately** is marked
**"takes effect immediately"**: switching the data source and the API keys, the mail texts, and at the mail sender "Send
test mail", "Save mail account" and "Delete connection". "Connect with Microsoft/Google" saves your open changes first.
The Carano credentials in the same section as the data source, however, apply only after "Save".

**Actions in the page header:** **Create subsidiary**, **Import subsidiary from Carano** (`CaranoImport` permission;
greyed out while the Carano credentials are missing or the data source is not "Carano") and **Delete company** (subsidiaries
only and with the `DeleteCompany` permission; deletes the company and all its users irrevocably, after a confirmation).

## Guides

- [Set up a new customer company](guide-new-customer.md)
- [Set up reminders and escalation](guide-reminders-escalation.md)
- [Own mailbox as sender](guide-own-mailbox.md)
