global class ResetLicenseKeyModel extends ErrorResult
{
    /// The primary key of the account ID to reset
    global Long accountId { get; set; }

    /// Set this value to true to reset the license key for this account.
    /// This license key reset function will only work when called using the credentials of the account administrator of this account.
    global Boolean confirmResetLicenseKey { get; set; }
}