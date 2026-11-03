# Tab "Platform"

Billing, data source and technical settings. The tab is marked **"admins only"**.

!!! note "Who sees which section?"
    The tab exists for subsidiaries only, as soon as you may see a section.
    **Billing**: `AlterCompanyBilling` permission · **Where the driver data comes from**: `CaranoImport` (role "Carano
    import authorized") · **Automatic review**: `ManageScoreThresholds` · **Technical settings**:
    `AlterCorporateIdentity`. The administrator has all permissions and grants further ones through custom roles.

## Billing

| Choice | Meaning |
|---|---|
| **Do not bill** | Nothing is charged for the company. |
| **Own invoice** | The company receives its own invoice. |
| **Via the parent company** | The costs appear on the invoice of the nearest higher company that has its own invoice; the line below says which one. If no parent company has its own invoice, nothing is billed. |

See also [Billing](../Admin/invoices.md).

## Where the driver data comes from

Data source of the drivers (As parent company, Manual, Carano, REST interface), Carano credentials and API keys.
**Switching the data source** and the **API keys** take effect immediately; the **Carano credentials** and the settings for **departed drivers** apply only after
"Save" at the top right, even though the whole section carries the "takes effect immediately" mark. In detail: [Driver data & interface](company-driver-data.md).

## Automatic review of the licence check

Applies to the licence check only. **Nothing is ever rejected automatically.** Every setting offers **Inherit** /
**Own value** (the weighting **Own weighting**).

| Setting | What it does |
|---|---|
| **Approve automatically from score** | Checks with at least this score are approved without a follow-up check if no exclusion reason applies (e.g. expired, name mismatch). At 0 %, every check without an exclusion reason is approved. Without a value anywhere in the chain nothing is approved automatically. |
| **Suggest rejection below** | Below it, the follow-up check recommends rejection; a human always decides. Without a value the page's recommendation applies. |
| **Weighting of the check criteria** | The score is made up of these criteria: document authenticity, capture authenticity, portrait match, machine-readable zone, image quality, text recognition. Per criterion **Take into account** and **Weight**; "Effective share" shows the share of the sum (the weights do not have to add up to 100). At least one criterion must be taken into account **and have a weight above 0**, otherwise a warning appears. |
| **An expired licence sets the score to 0** | **Yes / No** choice within the weighting. Independently of it, an expired licence is never approved automatically. |

The value for approval must be above the rejection suggestion. If you choose "Own value", a value must be entered, otherwise
saving is not possible.

## Technical settings

The area is collapsed.

- **Email technical settings:** driver software URL, admin software URL, sender address for the VeriFleet mailbox,
  splash link and e-mail adaptations. Editable when **"Set own details"** is chosen under
  [Communication › Details in the emails](company-edit-communication.md); otherwise the parent company's values apply.

    | Field | What it does |
    |---|---|
    | **Driver software URL** | Web address of the driver page; the link in the request mails is built from it (VeriFleet adds a trailing "/" itself). Required. |
    | **Admin software URL** | Web address of this administration interface; link in the mail with the credentials for new users. Required. |
    | **Sender address for the VeriFleet mailbox (optional)** | Applies only when mails go through the VeriFleet mailbox (neither an own nor an inherited mailbox). Empty = VeriFleet's default sender. |
    | **Splash-Link** | Additional link for your own mail texts (placeholder `{{splashLink}}`); the built-in mails do not use it. |
    | **E-mail adaptations** | Look of the request mail: "Standard" or a special variant for certain customer campaigns (test drive). |

- **Custom CSS for the interface:** expert CSS, applied last and overriding the settings in the
  [appearance](company-edit-appearance.md). For professionals only.
