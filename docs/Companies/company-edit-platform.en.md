# Tab "Platform"

Billing, data source and technical settings. The tab is marked **"admins only"**.

!!! note "Who sees which section?"
    **Billing**: "Change billing" permission · **Where the driver data comes from**: "Carano import" ·
    **Automatic check**: "Manage score thresholds" · **Technical settings**: "Corporate identity". Subsidiaries only.

## Billing

| Choice | Meaning |
|---|---|
| **Do not bill** | Nothing is charged for the company. |
| **Own invoice** | The company gets its own invoice. |
| **Via the parent company** | The costs appear on the parent company's invoice. |

See also [Billing](../Admin/invoices.md).

## Where the driver data comes from

Data source of the drivers (Like parent company, Manual, Carano, REST interface), Carano credentials and API keys.
The section **takes effect immediately**. In detail: [Driver data & interface](company-driver-data.md).

## Automatic check of the licence check

Applies to the licence check only. **Nothing is ever rejected automatically.**

| Setting | Effect |
|---|---|
| **Approve automatically from overall value** | Checks with at least this value are approved without follow-up check if no exclusion applies (e.g. expired, name mismatch). At 0 % every check without an exclusion is approved. |
| **Suggest rejection below** | Below it the follow-up check recommends rejection; a person always decides. |
| **Weighting of the check criteria** | Which criteria enter the overall value and with which weight. "Effective share" shows the share of the total. An expired licence is never approved automatically. |

Each setting has **Inherit** / **Own value**. The approval value must be above the rejection suggestion.

## Technical settings

- **Technical settings of the emails:** driver software URL, admin software URL, splash link, sender address at the
  VeriFleet mailbox and email adaptation (customer-specific email variant). Editable when "Own value" is chosen under
  [Communication › Details in the emails](company-edit-communication.md).
- **Own CSS for the interface:** expert CSS, applied last and overrides the settings in the
  [Appearance](company-edit-appearance.md). For professionals only.
