global enum AuthenticationTypeId
{
    /// This API call was not authenticated.
    None,

    /// This API call was authenticated by your username/password.
    UsernamePassword,

    /// This API call was authenticated by your Avalara Account ID and private license key.
    AccountIdLicenseKey,

    /// This API call was authenticated by OpenID Bearer Token.
    OpenIdBearerToken

}