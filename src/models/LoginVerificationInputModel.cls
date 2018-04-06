/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents a verification request using Skyscraper for a company

global class LoginVerificationInputModel extends ErrorResult
{

    /// CompanyId that we are verifying the login information for
    global Integer companyId { get; set; }

    /// AccountId of the login verification
    global Integer accountId { get; set; }

    /// Region of the verification request
    global String region { get; set; }

    /// Username that we are using for verification
    global String username { get; set; }

    /// Password we are using for verification
    global String password { get; set; }

    /// Additional options of the verification
    global String additionalOptions { get; set; }

    /// Bulk Request Id of the verification
    global Integer? bulkRequestId { get; set; }

    /// Priority of the verification request
    global Integer? priority { get; set; }
}
