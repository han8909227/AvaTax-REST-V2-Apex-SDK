/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Approve a set of filings. */

global class ApproveFilingsModel extends ErrorResult
{

    /// Set this value to true in order to approve the filings.
    global Boolean approve { get; set; }
}
