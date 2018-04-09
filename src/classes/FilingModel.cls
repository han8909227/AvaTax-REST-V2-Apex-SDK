/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a listing of all tax calculation data for filings and for accruing to future filings. */

global class FilingModel extends ErrorResult
{

    /// The unique ID number of this filing.
    global Int64? id { get; set; }

    /// The unique ID number of the company for this filing.
    global Integer? companyId { get; set; }

    /// The month of the filing period for this tax filing. 
    /// The filing period represents the year and month of the last day of taxes being reported on this filing. 
    /// For example, an annual tax filing for Jan-Dec 2015 would have a filing period of Dec 2015.
    global Byte? month { get; set; }

    /// The year of the filing period for this tax filing.
    /// The filing period represents the year and month of the last day of taxes being reported on this filing. 
    /// For example, an annual tax filing for Jan-Dec 2015 would have a filing period of Dec 2015.
    global Int16? year { get; set; }

    /// Indicates whether this is an original or an amended filing.
    global WorksheetTypeId? type { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// A listing of regional tax filings within this time period.
    global List<FilingRegionModel> filingRegions { get; set; }
}
