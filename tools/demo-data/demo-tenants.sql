-- Demo-Seed (nur lokal): zwei weitere Mandanten mit eigener Doku-Variante,
-- um die mandantenabhängige Auslieferung unter /hilfe zu demonstrieren.
-- Passwort der Demo-Admins = das des Seed-Users (Hash/Salt werden kopiert): dds2023!

SET @philip := (SELECT Id FROM Users WHERE EmailAddress='contact@pjacobs.eu' LIMIT 1);

-- ---------- FleetHub Demo ----------
SET @fh_brand := '11111111-1111-1111-1111-111111111111';
SET @fh_comp  := '1111aaaa-1111-1111-1111-111111111111';

INSERT INTO MailBrandings (Id, NameOfSoftware, SupportEmail, LinkOfDriverSoftware, LinkOfAdminSoftware,
    LinkOfDocumentation, LinkOfImprint, LinkOfPrivacy, LogoBase64, PrimaryCssColor, SecondaryCssColor,
    SplashLink, MailAdaption, DocumentationVariant)
VALUES (@fh_brand, 'FleetHub', 'support@fleethub.example', 'https://fleethub.example/', 'https://admin.fleethub.example/',
    'https://docs.fleethub.example/', 'https://fleethub.example/', 'https://fleethub.example/', '', '#189eda', '#0d6b96',
    '/login', 0, 'fleethub');

INSERT INTO Companies (Id, Name, Street, ZipCode, City, IsActive, EnableBilling, InheritBilling,
    ContactEmailAddress, ParentId, CreationDateTime, MailBrandingId, CheckupInterval, RequestLanguage)
VALUES (@fh_comp, 'FleetHub Demo GmbH', 'Musterweg 1', 20095, 'Hamburg', 1, 0, 0,
    'info@fleethub.example', NULL, NOW(), @fh_brand, 180, 'German');

INSERT INTO Users (Id, EmailAddress, IsActive, FirstName, LastName, LicenseNumber, HashedPassword, PasswordSalt,
    CreationDateTime, UserRoles, CompanyId, SecurityTagUsageCount, PasswordResetRequired, HasForeignLicense, CustomRoleIds)
SELECT '1111bbbb-1111-1111-1111-111111111111', 'admin@fleethub-demo.de', 1, 'Frieda', 'Fleethub', 'FH1234567',
    HashedPassword, PasswordSalt, NOW(), '["GeneralAdmin"]', @fh_comp, 0, 0, 0, '[]'
FROM Users WHERE Id=@philip;

-- ---------- BAMAKA Demo ----------
SET @bm_brand := '22222222-2222-2222-2222-222222222222';
SET @bm_comp  := '2222aaaa-2222-2222-2222-222222222222';

INSERT INTO MailBrandings (Id, NameOfSoftware, SupportEmail, LinkOfDriverSoftware, LinkOfAdminSoftware,
    LinkOfDocumentation, LinkOfImprint, LinkOfPrivacy, LogoBase64, PrimaryCssColor, SecondaryCssColor,
    SplashLink, MailAdaption, DocumentationVariant)
VALUES (@bm_brand, 'BAMAKA', 'support@bamaka.example', 'https://bamaka.example/', 'https://admin.bamaka.example/',
    'https://docs.bamaka.example/', 'https://bamaka.example/', 'https://bamaka.example/', '', '#ff0000', '#a30000',
    '/login', 0, 'bamaka');

INSERT INTO Companies (Id, Name, Street, ZipCode, City, IsActive, EnableBilling, InheritBilling,
    ContactEmailAddress, ParentId, CreationDateTime, MailBrandingId, CheckupInterval, RequestLanguage)
VALUES (@bm_comp, 'BAMAKA Demo GmbH', 'Beispielstraße 5', 80331, 'München', 1, 0, 0,
    'info@bamaka.example', NULL, NOW(), @bm_brand, 180, 'German');

INSERT INTO Users (Id, EmailAddress, IsActive, FirstName, LastName, LicenseNumber, HashedPassword, PasswordSalt,
    CreationDateTime, UserRoles, CompanyId, SecurityTagUsageCount, PasswordResetRequired, HasForeignLicense, CustomRoleIds)
SELECT '2222bbbb-2222-2222-2222-222222222222', 'admin@bamaka-demo.de', 1, 'Bruno', 'Bamaka', 'BM1234567',
    HashedPassword, PasswordSalt, NOW(), '["GeneralAdmin"]', @bm_comp, 0, 0, 0, '[]'
FROM Users WHERE Id=@philip;
