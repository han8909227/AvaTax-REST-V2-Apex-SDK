/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Ping Result Model

global class PingResultModel extends ErrorResult
{

    /// Version number
    global String version { get; set; }

    /// Returns true if you provided authentication for this API call; false if you did not.
    global Boolean? authenticated { get; set; }

    /// Returns the type of authentication you provided, if authenticated
    global AuthenticationTypeId? authenticationType { get; set; }

    /// The username of the currently authenticated user, if any.
    global String authenticatedUserName { get; set; }

    /// The ID number of the currently authenticated user, if any.
    global Integer? authenticatedUserId { get; set; }

    /// The ID number of the currently authenticated user's account, if any.
    global Integer? authenticatedAccountId { get; set; }

    /// The connected Salesforce account.
    global String crmid { get; set; }
}
