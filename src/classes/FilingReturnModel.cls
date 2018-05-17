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

global class FilingReturnModel extends ErrorResult
{

    // The unique ID number of this filing return.
    global Integer id { get; set; }

    // The region id that this return belongs too
    global Integer filingRegionId { get; set; }

    // The unique ID number of the filing calendar associated with this return.
    global Integer filingCalendarId { get; set; }

    // The resourceFileId of the return. Will be null if not available.
    global Integer resourceFileId { get; set; }

    // Tax Authority ID of this return
    global Integer taxAuthorityId { get; set; }

    // The current status of the filing return.
    global FilingStatusId status { get; set; }

    // The filing frequency of the return.
    global FilingFrequencyId filingFrequency { get; set; }

    // The date the return was filed by Avalara.
    global DateTime filedDate { get; set; }

    // The start date of this return
    global DateTime startPeriod { get; set; }

    // The end date of this return
    global DateTime endPeriod { get; set; }

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

    // Consumer use tax liability during the period.
    global Decimal consumerUseTaxAmount { get; set; }

    // Consumer use tax liability accrued during the period.
    global Decimal consumerUseTaxDueAmount { get; set; }

    // Consumer use non-taxable amount.
    global Decimal consumerUseNonTaxableAmount { get; set; }

    // Consumer use taxable amount.
    global Decimal consumerUseTaxableAmount { get; set; }

    // Total amount of adjustments on this return
    global Decimal totalAdjustments { get; set; }

    // The amount of sales excluded from the liability calculation
    global Decimal excludedSalesAmount { get; set; }

    // The amount of non-taxable sales excluded from the liability calculation
    global Decimal excludedNonTaxableAmount { get; set; }

    // The amount of tax excluded from the liability calculation
    global Decimal excludedTaxAmount { get; set; }

    // The amount of carry over sales applied to the liability calculation
    global Decimal carryOverSalesAmount { get; set; }

    // The amount of carry over non taxable sales applied to the liability calculation
    global Decimal carryOverNonTaxableAmount { get; set; }

    // The amount of carry over sales tax applied to the liability calculation
    global Decimal carryOverTaxAmount { get; set; }

    // The amount of carry over consumer use tax applied to the liability calculation
    global Decimal carryOverConsumerUseTaxAmount { get; set; }

    // The total amount of total tax accrued in the current active period
    global Decimal taxAccrualAmount { get; set; }

    // The total amount of sales accrued in the current active period
    global Decimal salesAccrualAmount { get; set; }

    // The total amount of nontaxable sales accrued in the current active period
    global Decimal nonTaxableAccrualAmount { get; set; }

    // The total amount of taxable sales accrued in the current active period
    global Decimal taxableAccrualAmount { get; set; }

    // The total amount of sales tax accrued in the current active period
    global Decimal salesTaxAccrualAmount { get; set; }

    // The total amount of sellers use tax accrued in the current active period
    global Decimal sellersUseTaxAccrualAmount { get; set; }

    // The total amount of consumer use tax accrued in the current active period
    global Decimal consumerUseTaxAccrualAmount { get; set; }

    // The total amount of consumer use taxable sales accrued in the current active period
    global Decimal consumerUseTaxableAccrualAmount { get; set; }

    // The total amount of consumer use non taxable sales accrued in the current active period
    global Decimal consumerUseNonTaxableAccrualAmount { get; set; }

    // The Adjustments for this return.
    global List<FilingAdjustmentModel> adjustments { get; set; }

    // Total amount of augmentations on this return
    global Decimal totalAugmentations { get; set; }

    // The Augmentations for this return.
    global List<FilingAugmentationModel> augmentations { get; set; }

    // Total amount of payments on this return
    global Decimal totalPayments { get; set; }

    // The payments for this return.
    global List<FilingPaymentModel> payments { get; set; }

    // Accrual type of the return
    global AccrualType accrualType { get; set; }

    // The month of the filing period for this tax filing. 
    // The filing period represents the year and month of the last day of taxes being reported on this filing. 
    // For example, an annual tax filing for Jan-Dec 2015 would have a filing period of Dec 2015.
    global Integer month { get; set; }

    // The year of the filing period for this tax filing.
    // The filing period represents the year and month of the last day of taxes being reported on this filing. 
    // For example, an annual tax filing for Jan-Dec 2015 would have a filing period of Dec 2015.
    global Integer year { get; set; }

    // The attachments for this return.
    global List<FilingAttachmentModel> attachments { get; set; }

    // The date when this record was created.
    global DateTime createdDate { get; set; }

    // The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    // The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }
}
