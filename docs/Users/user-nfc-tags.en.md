# NFC seals (old driving licences)

For paper driving licences without modern security features the system uses
**tamper-proof NFC seals**: a special seal with an NFC chip is applied to the licence
once. From then on, the check is performed by simply scanning the seal with a
smartphone — faster and more secure than a photo upload.

## Storing the seal number

For a driver to be checked via NFC seal, the seal number must be stored in their master
data:

1. Open the driver's **user detail view**.
2. Enter the 14-character identifier of the seal in the **seal number** field
   (hexadecimal characters 0–9, A–F).
3. Save the user.

## Check flow

1. The driver receives a check request by e-mail or SMS as usual.
2. Instead of photographing the licence, they hold their smartphone against the NFC seal.
3. The seal transmits an **encrypted, one-time identifier** to the system.
4. The system decrypts the identifier, matches it against the stored seal number and — on
   a match — completes the check automatically as successful.

## Security properties

- **Copy protection:** every scan carries an incrementing counter. Recorded or copied
  scans are detected and rejected.
- **No non-destructive removal:** the seal cannot be detached from the licence without
  damage. Any tampering attempt is immediately visible.
- **Encryption:** the communication between seal and system is encrypted; the seal
  identifier cannot be read out and reproduced.

!!! note
    Drivers need an NFC-capable smartphone (standard on all current devices). If NFC is
    unavailable, the photo check remains available as a fallback.
