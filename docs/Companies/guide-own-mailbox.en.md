# Guide: Own mailbox as sender

A company's mails can be sent through its own mailbox, for example from `fleet@your-company.com` instead of the VeriFleet
mailbox. The mailbox also applies to subsidiaries as long as they have none of their own. The `ManageMailIntegration`
permission is required (administrator or custom role).

1. Open **Company › Communication › Mail sender** and choose **"Own mailbox"**.
2. Pick the matching tile: **"Connect with Microsoft"** (Microsoft 365) or **"Connect with Google"** (Google Workspace).
   Open changes on the page are saved first.
3. Sign in to the provider's window with the mailbox that should be the sender and confirm.
4. Back in VeriFleet the section shows **"Connected as …"**. Enter a **recipient** under **Send test mail** and check the
   delivery. Adjust from address and display name if needed in the collapsed area "Experts: service account and SMTP
   server"; VeriFleet fills in the address itself when connecting.

**Own mail server (SMTP):** click **"Set up manually"**, open the area "Experts: service account and SMTP server" if needed
and enter from address, SMTP host, port (587), user and password. Apply the entries with **"Save mail account"** (or "Save"
at the top right) and check them with "Send test mail". An IT department with a service account (Microsoft "App permission",
Google "Service account") enters its details there as well; the fields are explained under
[Communication](company-edit-communication.md).

!!! warning
    If sign-in via the provider is not set up yet, the buttons are locked and a notice appears; contact your account manager.
    Google requires an app verification for sending; until then a warning appears when connecting. Providers limit sending
    (Microsoft: 30 mails per minute). VeriFleet stays below that (default 12 mails per minute and 2,000 per 24 hours,
    adjustable per mailbox); the sending limit is shown in the section. Requests held back are delivered automatically
    afterwards.

**Back to the previous sender:** **"Delete connection"** (takes effect immediately, after a confirmation) removes the mailbox
including credentials. Sending then goes through the parent company's mailbox or the VeriFleet mailbox. Provider setup
details: [Mail connection](../Admin/mail-oauth.md).
