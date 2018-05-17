/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Filing Returns Model */

global class FilingReturnModelBasic extends ErrorResult
{

    // The unique ID number of the company filing return.
    global Integer companyId { get; set; }

    // The unique ID number of this filing return.
    global Integer id { get; set; }

    // The filing id that this return belongs too
    global Integer filingId { get; set; }

    // The resourceFileId of the return
    global Integer resourceFileId { get; set; }

    // The region id that this return belongs too
    global Integer filingRegionId { get; set; }

    // The unique ID number of the filing calendar associated with this return.
    global Integer filingCalendarId { get; set; }

    // The country of the form.
    global String country { get; set; }

    // The region of the form.
    global String region { get; set; }

    // The month of the filing period for this tax filing. 
    // The filing period represents the year and month of the last day of taxes being reported on this filing. 
    // For example, an annual tax filing for Jan-Dec 2015 would have a filing period of Dec 2015.
    global Integer endPeriodMonth { get; set; }

    // The year of the filing period for this tax filing.
    // The filing period represents the year and month of the last day of taxes being reported on this filing. 
    // For example, an annual tax filing for Jan-Dec 2015 would have a filing period of Dec 2015.
    global Integer endPeriodYear { get; set; }

    // The current status of the filing return.
    global FilingStatusId status { get; set; }

    // The filing frequency of the return.
    global FilingFrequencyId filingFrequency { get; set; }

    // The date the return was filed by Avalara.
    global DateTime filedDate { get; set; }

    // The sales amount.
    global Decimal salesAmount { get; set; }

    // The filing type of the return.
    global FilingTypeId filingType { get; set; }

    // The name of the form.
    global String formName { get; set; }

    // The remittance amount of the return.
    global Decimal remitAmount { get; set; }

    // The unique code of the form.
    global String formCode { get; set; }

    // A description for the return.
    global String description { get; set; }

    // The taxable amount.
    global Decimal taxableAmount { get; set; }

    // The tax amount.
    global Decimal taxAmount { get; set; }

    // The amount collected by avalara for this return
    global Decimal collectAmount { get; set; }

    // The tax due amount.
    global Decimal taxDueAmount { get; set; }

    // The non-taxable amount.
    global Decimal nonTaxableAmount { get; set; }

    // The non-taxable due amount.
    global Decimal nonTaxableDueAmount { get; set; }

    // Consumer use tax liability.
    global Decimal consumerUseTaxAmount { get; set; }

    // Consumer use non-taxable amount.
    global Decimal consumerUseNonTaxableAmount { get; set; }

    // Consumer use taxable amount.
    global Decimal consumerUseTaxableAmount { get; set; }

    // The amount of sales excluded from the liability calculation
    global Decimal excludedSalesAmount { get; set; }

    // The amount of non-taxable sales excluded from the liability calculation
    global Decimal excludedNonTaxableAmount { get; set; }

    // The amount of tax excluded from the liability calculation
    global Decimal excludedTaxAmount { get; set; }

    // Accrual type of the return
    global AccrualType accrualType { get; set; }

    // The attachments for this return.
    global List<FilingAttachmentModel> attachments { get; set; }

    // The date when this record was created.
    global DateTime createdDate { get; set; }

    // The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    // The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }
}
