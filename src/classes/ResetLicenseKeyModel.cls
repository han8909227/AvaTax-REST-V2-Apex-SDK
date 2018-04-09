/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a license key reset request. */

global class ResetLicenseKeyModel extends ErrorResult
{

    /// The primary key of the account ID to reset
    global Integer accountId { get; set; }

    /// Set this value to true to reset the license key for this account.
    // This license key reset function will only work when called using the credentials of the account administrator of this account.
    global Boolean confirmResetLicenseKey { get; set; }
}
