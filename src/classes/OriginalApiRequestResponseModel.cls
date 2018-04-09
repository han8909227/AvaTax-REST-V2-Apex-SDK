/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents the exact API request and response from the original transaction API call, if available */

global class OriginalApiRequestResponseModel extends ErrorResult
{

    /// API request
    global String request { get; set; }

    /// API response
    global String response { get; set; }
}
