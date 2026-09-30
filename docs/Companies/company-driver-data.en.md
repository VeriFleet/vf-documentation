# Driver data & interface

In the **"Driver data & interface"** section of the company settings you define **where a
company's driver data comes from**: from the user interface, from the Carano fleet system, or
from the customer's own system via the interface (REST API). For the interface you also manage
the **API keys** here, which the customer system uses to authenticate.

This section used to be called **"Carano connection"**.

!!! note "Who sees this section?"
    Platform administrators only — users with the **"Carano import authorized"** permission. If
    you do not see the section and want to change the data source or need an API key, contact
    your account manager.

## Opening the section

1. Select the company — usually the **tenant**, i.e. the customer's top-level company.
2. Click **"Company"** in the menu.
3. Expand the **"Driver data & interface"** section.

## Driver data source

At the top of the section you choose the data source:

| Option | Meaning |
|---|---|
| **Inherit** | The setting of the parent company applies. Only available for companies with a parent company. |
| **Manual** | Drivers are maintained in the user interface. |
| **Carano** | Drivers come from Carano; the import runs every 4 hours. |
| **REST API** | The customer's system creates and maintains drivers and books checks via the interface. |

**Inheritance:** The data source is set at the tenant and applies to every company below it that
has no value of its own. If nothing is set anywhere in the company chain, **"Manual"** applies.
Below the selection you see what actually applies and where it comes from, for example
"In effect: Carano (inherited from “Sample Company Ltd”)".

### Changing the data source

1. Select the new data source.
2. The **"Change data source?"** dialog opens. It shows the effect of the change: how many
   Carano-linked subsidiaries and Carano drivers are affected and which active API keys will be
   revoked.
3. Confirm the dialog.

!!! warning "The change takes effect immediately"
    The new data source applies **as soon as you confirm** — not only when you click "Save" at
    the bottom. The change is recorded in the history of the administrator who made it.

### What changes

**From Carano to "Manual" or "REST API":**

- The Carano import and export skip these companies from their next run on.
- Carano customer numbers, the Carano credentials and the drivers' Carano IDs **are kept**. You
  can therefore return to Carano at any time without losing data.
- Drivers can be edited in the user interface and moved to other companies.
- Drivers who have left are **no longer deleted automatically**. Deactivate them yourself — in
  the user interface or via the interface.
- Check results are no longer sent to Carano. Checks completed elsewhere are booked by the
  customer system via `POST api/user/{id}/check`; this also closes the driver's open requests.
- Requests, reminders and e-learning continue unchanged.

**Back to Carano:** From the next import run on, Carano overwrites the master data of the Carano
drivers again.

!!! tip
    Before switching back, check that the driver list in Carano is up to date: the import removes
    Carano drivers that Carano no longer lists as active, as usual.

**Leaving "REST API":** The company's active API keys are revoked. The customer system can no
longer authenticate with them.

### Existing companies

Every tenant that was synchronised with Carano before is automatically set to **"Carano"**. All
other companies have no value of their own and count as **"Manual"**. Nothing changes until
someone switches.

## Data source "Carano": credentials

In "Carano" mode the section shows the tenant's Carano credentials:

- **Tenant identifier**
- **User**
- **Password**

The stored password is **never displayed** — the field stays empty:

- Leave the field **empty** to keep the stored password.
- **Type a new password** to replace the stored one.
- Click **"Remove stored password"** to delete it.

The **"Import sub-company from Carano"** button is only available in "Carano" mode. How to import
companies from Carano is described under [Carano connection](company-carano-connection.md).

## Data source "REST API": API keys

In "REST API" mode you manage the keys the customer system uses to authenticate at the interface.

### "API keys" overview

| Column | Content |
|---|---|
| **Name** | a name of your choice, e.g. the connecting system |
| **Key** | only the public beginning, e.g. `vfk_1a2b3c4d_…` — enough to talk to the customer about the same key |
| **Acts as** | the user on whose behalf the key works |
| **Created** | time of creation |
| **Last used** | last successful request with this key |
| **Expires** | optional expiry date |
| **Status** | *Active*, *Revoked* or *Expired* |

**"Revoke"** blocks a key permanently after a confirmation prompt. Revoked keys stay in the list
for traceability.

### Creating a key

1. Click **"Create key"**.
2. Fill in the dialog:
    - **Name** (required) — for example the name of the connecting system.
    - **Acts as** — an active user of this company with the right to manage users; typically the
      customer's existing API user. Alternatively choose **"New technical API user"**: this
      creates a user "API &lt;company name&gt;" with the company administrator role, **without an
      e-mail address and without a password**. It cannot log in anywhere; only the key acts on its
      behalf.
    - **Expires on** (optional) — after this date the key is rejected.
3. Confirm. The key is shown **exactly once**, with a button to copy it.

!!! warning "Hand the key over securely right away"
    The full key **cannot be shown again** — only a check value is stored, from which the key
    cannot be recovered. Copy it and hand it to the customer via a secure channel, not in plain
    text by e-mail or chat. If it is lost, revoke it and create a new one.

### Transition from e-mail and password login

Until now, customer systems logged in with a user's e-mail address and password
(`POST api/auth`) and received a session token. The switch
**"Allow e-mail/password login to the API (transition)"** controls whether this keeps
working:

- **On** (default): the previous way keeps working **in parallel** to the API keys, so the
  customer can switch at their own pace.
- **Off**: `POST api/auth` is rejected with **HTTP 403 `password_login_disabled`** for users of
  this company and of all companies below it that inherit the setting. Logging in to the user
  interface is **not** affected.

Like the data source, the switch is inherited by the companies below. It takes effect
**immediately** – not only when you click "Save"; switching it off asks for confirmation first and
is recorded in the administrator's history. Sessions a customer system obtained earlier via
`POST api/auth` are rejected within a minute at the latest.

**Recommended procedure:**

1. Create a key.
2. Hand the key over to the customer securely.
3. The customer switches their system to the key.
4. Check in the overview that **"Last used"** shows recent requests for the key.
5. Turn the switch **off**.

## For the customer's IT: using the key

- Send the key with **every** request in the HTTP header `Authorization` — a leading `Bearer ` is
  accepted but not required:

    ```text
    Authorization: vfk_1a2b3c4d_…
    ```

- No login call is needed. There is no session that expires or is lost when the server
  restarts.
- The key is accepted **only in the `Authorization` header**, never as part of the address (URL).
- The key acts **as the stored user**: that user's rights and visibility apply (the company and
  all companies below it), and that user appears in the history.
- Each key allows **100 requests per minute**.
- The description of all interface calls (Swagger) is available at the address of your
  administration interface with the path `/swagger`.

!!! warning "No access to the user interface"
    An API key **never** opens the administration interface. Conversely, the interface no longer
    accepts session tokens from `POST api/auth` either — it only accepts logins through its own
    login page, with [two-factor authentication](../Admin/two-factor.md) where required. This
    applies regardless of the selected data source.
