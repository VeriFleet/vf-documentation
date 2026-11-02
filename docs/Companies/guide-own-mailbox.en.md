# Guide: Own mailbox as sender

A company's emails can be sent through its own mailbox. The mailbox also applies to subsidiaries as long as they
have none of their own.

1. Open **Edit a company › Communication › Sender of the emails** and choose **"Own mailbox"**.
2. Click **"Connect with Microsoft"** (Microsoft 365) or **"Connect with Google"** (Google Workspace). Unsaved changes
   are saved first.
3. Sign in to the provider's window with the mailbox that should be the sender and confirm.
4. Back in VeriFleet the section shows **"Connected as …"**. Enter a recipient under **Send test email** and check
   the delivery.

**Own mail server:** use **"Set up manually"** to enter host, port and credentials (SMTP).

!!! warning
    If sign-in via the provider is not set up yet, a notice appears; contact your account manager. Google requires
    an app verification for sending; until then a warning appears when connecting. Providers limit sending
    (Microsoft: 30 emails per minute). The mailbox's sending limit is shown in the section; requests held back are
    delivered automatically afterwards.

**Back to the VeriFleet mailbox:** **"Delete connection"** (takes effect immediately). Sending then goes through the
parent company's mailbox or the VeriFleet mailbox. Provider setup details: [Mail connection](../Admin/mail-oauth.md).
