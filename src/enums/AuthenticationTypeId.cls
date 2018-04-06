/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents the type of authentication provided to the API call

global enum AuthenticationTypeId
{

    /// This API call was not authenticated.
    None,

    /// This API call was authenticated by your username/password.
    UsernamePassword,

    /// This API call was authenticated by your Avalara Account ID and private license key.
    AccountIdLicenseKey,

    /// This API call was authenticated by OpenID Bearer Token.
    OpenIdBearerToken,

}
