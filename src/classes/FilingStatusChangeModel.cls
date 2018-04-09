/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a change request for filing status for a company */

global class FilingStatusChangeModel extends ErrorResult
{

    /// Indicates the filing status you are requesting for this company
    global CompanyFilingStatus requestedStatus { get; set; }
}
