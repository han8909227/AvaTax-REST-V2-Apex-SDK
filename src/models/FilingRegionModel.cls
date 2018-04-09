/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Regions */

global class FilingRegionModel extends ErrorResult
{

    /// The unique ID number of this filing region.
    global Int64? id { get; set; }

    /// The filing id that this region belongs too
    global Int64? filingId { get; set; }

    /// The two-character ISO-3166 code for the country.
    global String country { get; set; }

    /// The two or three character region code for the region.
    global String region { get; set; }

    /// The sales amount.
    global Decimal? salesAmount { get; set; }

    /// The taxable amount.
    global Decimal? taxableAmount { get; set; }

    /// The tax amount.
    global Decimal? taxAmount { get; set; }

    /// The tax amount due.
    global Decimal? taxDueAmount { get; set; }

    /// The amount collected by Avalara for this region
    global Decimal? collectAmount { get; set; }

    /// Total remittance amount of all returns in region
    global Decimal? totalRemittanceAmount { get; set; }

    /// The non-taxable amount.
    global Decimal? nonTaxableAmount { get; set; }

    /// Consumer use tax liability.
    global Decimal? consumerUseTaxAmount { get; set; }

    /// Consumer use non-taxable amount.
    global Decimal? consumerUseNonTaxableAmount { get; set; }

    /// Consumer use taxable amount.
    global Decimal? consumerUseTaxableAmount { get; set; }

    /// The date the filing region was approved.
    global DateTime? approveDate { get; set; }

    /// The start date for the filing cycle.
    global DateTime? startDate { get; set; }

    /// The end date for the filing cycle.
    global DateTime? endDate { get; set; }

    /// Whether or not you have nexus in this region.
    global Boolean? hasNexus { get; set; }

    /// The current status of the filing region.
    global FilingStatusId? status { get; set; }

    /// A list of tax returns in this region.
    global List<FilingReturnModel> returns { get; set; }

    /// A list of tax returns in this region.
    global List<FilingsCheckupSuggestedFormModel> suggestReturns { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
