/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents information about a tax form known to Avalara */

global class FormMasterModel extends ErrorResult
{

    /// Unique ID number of this form master object
    global Integer id { get; set; }

    /// The type of the form being submitted
    global Integer formTypeId { get; set; }

    /// Unique tax form code representing this tax form
    global String taxFormCode { get; set; }

    /// Legacy return name as known in the AvaFileForm table
    global String legacyReturnName { get; set; }

    /// Human readable form summary name
    global String taxFormName { get; set; }

    /// Description of this tax form
    global String description { get; set; }

    /// True if this form is available for use
    global Boolean isEffective { get; set; }

    /// ISO 3166 code of the country that issued this tax form
    global String country { get; set; }

    /// The region within which this form was issued
    global String region { get; set; }

    /// Tax authority that issued the form
    global String authorityName { get; set; }

    /// DEPRECATED
    global String shortCode { get; set; }

    /// Day of the month when the form is due
    global Integer dueDay { get; set; }

    /// Day of the month on which the form is considered delinquent. Almost always the same as DueDay
    global Integer delinquentDay { get; set; }

    /// Month of the year the state considers as the first fiscal month
    global Integer fiscalYearStartMonth { get; set; }

    /// Can form support multi frequencies
    global Boolean hasMultiFrequencies { get; set; }

    /// Does this tax authority require a power of attorney in order to speak to Avalara
    global Boolean isPOARequired { get; set; }

    /// True if this form requires that the customer register with the authority
    global Boolean isRegistrationRequired { get; set; }

    /// Unused
    global Boolean hasMultiRegistrationMethods { get; set; }

    /// Unused
    global Boolean hasSchedules { get; set; }

    /// Unused
    global Boolean hasMultiFilingMethods { get; set; }

    /// Unused
    global Boolean hasMultiPayMethods { get; set; }

    /// Unused
    global Boolean isEFTRequired { get; set; }

    /// Unused
    global Boolean isFilePayMethodLinked { get; set; }

    /// Unused
    global Integer mailingReceivedRuleId { get; set; }

    /// Unused
    global Integer proofOfMailingId { get; set; }

    /// True if you can report a negative amount in a single jurisdiction on the form
    global Boolean isNegAmountAllowed { get; set; }

    /// True if the form overall can go negative
    global Boolean allowNegativeOverallTax { get; set; }

    /// Unused
    global Boolean isNettingRequired { get; set; }

    /// Unused
    global Integer roundingMethodId { get; set; }

    /// Total amount of discounts that can be received by a vendor each year
    global Decimal vendorDiscountAnnualMax { get; set; }

    /// Unused
    global Boolean versionsRequireAuthorityApproval { get; set; }

    /// Type of outlet reporting for this form
    global Integer outletReportingMethodId { get; set; }

    /// Unused
    global Boolean hasReportingCodes { get; set; }

    /// Not sure if used
    global Boolean hasPrepayments { get; set; }

    /// Unused
    global Boolean grossIncludesInterstateSales { get; set; }

    /// Unused
    global String grossIncludesTax { get; set; }

    /// Unused
    global Boolean hasEfileFee { get; set; }

    /// Unused
    global Boolean hasEpayFee { get; set; }

    /// Unused
    global Boolean hasDependencies { get; set; }

    /// Unused
    global String requiredEfileTrigger { get; set; }

    /// Unused
    global String requiredEftTrigger { get; set; }

    /// Unused
    global Boolean vendorDiscountEfile { get; set; }

    /// Unused
    global Boolean vendorDiscountPaper { get; set; }

    /// Unused
    global String peerReviewed { get; set; }

    /// Unused
    global String peerReviewedId { get; set; }

    /// Unused
    global String peerReviewedDate { get; set; }

    /// ID of the Avalara user who created the form
    global Integer createdUserId { get; set; }

    /// Date when form was created
    global DateTime createdDate { get; set; }

    /// ID of the Avalara user who modified the form
    global Integer modifiedUserId { get; set; }

    /// Date when form was modified
    global DateTime modifiedDate { get; set; }

    /// Mailing address of the department of revenue
    global String dorAddressMailTo { get; set; }

    /// Mailing address of the department of revenue
    global String dorAddress1 { get; set; }

    /// Mailing address of the department of revenue
    global String dorAddress2 { get; set; }

    /// Mailing address of the department of revenue
    global String dorAddressCity { get; set; }

    /// Mailing address of the department of revenue
    global String dorAddressRegion { get; set; }

    /// Mailing address of the department of revenue
    global String dorAddressPostalCode { get; set; }

    /// Mailing address of the department of revenue
    global String dorAddressCountry { get; set; }

    /// Mailing address to use when a zero dollar form is filed
    global String zeroAddressMailTo { get; set; }

    /// Mailing address to use when a zero dollar form is filed
    global String zeroAddress1 { get; set; }

    /// Mailing address to use when a zero dollar form is filed
    global String zeroAddress2 { get; set; }

    /// Mailing address to use when a zero dollar form is filed
    global String zeroAddressCity { get; set; }

    /// Mailing address to use when a zero dollar form is filed
    global String zeroAddressRegion { get; set; }

    /// Mailing address to use when a zero dollar form is filed
    global String zeroAddressPostalCode { get; set; }

    /// Mailing address to use when a zero dollar form is filed
    global String zeroAddressCountry { get; set; }

    /// Mailing address to use when filing an amended return
    global String amendedAddressMailTo { get; set; }

    /// Mailing address to use when filing an amended return
    global String amendedAddress1 { get; set; }

    /// Mailing address to use when filing an amended return
    global String amendedAddress2 { get; set; }

    /// Mailing address to use when filing an amended return
    global String amendedAddressCity { get; set; }

    /// Mailing address to use when filing an amended return
    global String amendedAddressRegion { get; set; }

    /// Mailing address to use when filing an amended return
    global String amendedAddressPostalCode { get; set; }

    /// Mailing address to use when filing an amended return
    global String amendedAddressCountry { get; set; }

    /// Unused
    global Boolean onlineBackFiling { get; set; }

    /// Unused
    global Boolean onlineAmendedReturns { get; set; }

    /// --Need Further Clarification
    global String prepaymentFrequency { get; set; }

    /// Unused
    global Boolean outletLocationIdentifiersRequired { get; set; }

    /// --Need Further Clarification
    global String listingSortOrder { get; set; }

    /// Link to the state department of revenue website, if available
    global String dorWebsite { get; set; }

    /// --Need Further Clarification
    global Boolean fileForAllOutlets { get; set; }

    /// --Need Further Clarification
    global Boolean paperFormsDoNotHaveDiscounts { get; set; }

    /// Internal behavior
    global Boolean stackAggregation { get; set; }

    /// --Need Further Clarification
    global String roundingPrecision { get; set; }

    /// --Need Further Clarification
    global String inconsistencyTolerance { get; set; }

    /// Date when this form became effective
    global DateTime effDate { get; set; }

    /// Date when this form expired
    global DateTime endDate { get; set; }

    /// True if this form can be shown to customers
    global Boolean visibleToCustomers { get; set; }

    /// True if this form requires that you set up outlets in the state
    global Boolean requiresOutletSetup { get; set; }

    /// True if this state permits payment by ACH Credit
    global Boolean achCreditAllowed { get; set; }

    /// Jurisdiction level of the state
    global String reportLevel { get; set; }

    /// True if this form is verified filed via email
    global Boolean postOfficeValidated { get; set; }

    /// Internal Avalara flag
    global String stackAggregationOption { get; set; }

    /// Internal Avalara flag
    global String sstBehavior { get; set; }

    /// Internal Avalara flag
    global String nonSstBehavior { get; set; }

    /// Phone number of the department of revenue
    global String dorPhoneNumber { get; set; }

    /// Unused
    global String averageCheckClearDays { get; set; }

    /// Unused
    global Boolean filterZeroRatedLineDetails { get; set; }

    /// Unused
    global Boolean allowsBulkFilingAccounts { get; set; }

    /// Unused
    global String bulkAccountInstructionLink { get; set; }

    /// Unused
    global String registrationIdFormat { get; set; }

    /// Unused
    global String thresholdTrigger { get; set; }

    /// Unused
    global String transactionSortingOption { get; set; }

    /// Unused
    global Integer contentReviewFrequencyId { get; set; }

    /// Unused
    global String aliasForFormMasterId { get; set; }
}
