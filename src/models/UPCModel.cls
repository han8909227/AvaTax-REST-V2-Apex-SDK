/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// One Universal Product Code object as defined for your company.

global class UPCModel extends ErrorResult
{

    /// The unique ID number for this UPC.
    global Integer id { get; set; }

    /// The unique ID number of the company to which this UPC belongs.
    global Integer? companyId { get; set; }

    /// The 12-14 character Universal Product Code, European Article Number, or Global Trade Identification Number.
    global String upc { get; set; }

    /// Legacy Tax Code applied to any product sold with this UPC.
    global String legacyTaxCode { get; set; }

    /// Description of the product to which this UPC applies.
    global String description { get; set; }

    /// If this UPC became effective on a certain date, this contains the first date on which the UPC was effective.
    global DateTime? effectiveDate { get; set; }

    /// If this UPC expired or will expire on a certain date, this contains the last date on which the UPC was effective.
    global DateTime? endDate { get; set; }

    /// A usage identifier for this UPC code.
    global Integer? usage { get; set; }

    /// A flag indicating whether this UPC code is attached to the AvaTax system or to a company.
    global Integer? isSystem { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
