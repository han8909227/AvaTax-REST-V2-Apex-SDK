global virtual class LicenseKeyModel extends ErrorResult
{
    /// The primary key of the account
    global Long accountId { get; set; }
    /// This is your private license key. You must record this license key for safekeeping.
    /// If you lose this key, you must contact the ResetLicenseKey API in order to request a new one.
    /// Each account can only have one license key at a time.
    global String privateLicenseKey { get; set; }

    /// If your software allows you to specify the HTTP Authorization header directly, this is the header string you 
    /// should use when contacting Avalara to make API calls with this license key.
    global String httpRequestHeader { get; set; }
}