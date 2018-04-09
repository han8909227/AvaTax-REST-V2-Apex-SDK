/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents the current status of a funding ESign method */

global class FundingESignMethodReturn
{

    /// Method
    global String method { get; set; }

    /// JavaScriptReady
    global Boolean javaScriptReady { get; set; }

    /// The actual javascript to use to render this object
    global String javaScript { get; set; }
}
