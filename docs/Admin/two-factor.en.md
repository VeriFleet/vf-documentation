# Two-factor authentication (2FA)

Two-factor authentication protects the sign-in to the admin area with an additional
security factor: after entering the correct e-mail address and password, the system asks
for a **6-digit verification code** that is sent to the user's e-mail address.

## Enforcing 2FA for a company

Whether 2FA is mandatory is configured **per company**:

1. Open **Edit company**.
2. In the master data, enable the option **"Enforce two-factor authentication
   (recursive)"**.
3. Save the change.

The setting is **recursive** — it automatically applies to all sub-companies as well.

From then on, every user of this company goes through the two-factor check when signing
in.

## Sign-in flow

1. The user signs in as usual with e-mail address and password.
2. The system automatically sends a 6-digit code to the stored e-mail address.
3. A dialog asks for the code.
4. After entering the correct code the sign-in is complete.

!!! warning
    Users without a stored e-mail address cannot sign in while 2FA is enforced. Before
    enabling it, make sure all admin users of the company have a valid e-mail address in
    their master data.

!!! tip
    Nothing changes for drivers: the driving-licence check via link or QR code still works
    without any sign-in — 2FA only affects access to the admin area.
