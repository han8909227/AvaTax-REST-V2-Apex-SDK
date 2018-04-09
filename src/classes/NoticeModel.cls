/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a letter received from a tax authority regarding tax filing.
    /// These letters often have the warning "Notice" printed at the top, which is why
    /// they are called "Notices". */

global class NoticeModel extends ErrorResult
{

    /// The unique ID number of this notice.
    global Integer id { get; set; }

    /// The unique ID number of the company to which this notice belongs.
    global Integer companyId { get; set; }

    /// The status id of the notice
    global Integer statusId { get; set; }

    /// The status of the notice
    global String status { get; set; }

    /// The received date of the notice
    global DateTime receivedDate { get; set; }

    /// The closed date of the notice
    global DateTime closedDate { get; set; }

    /// The total remmitance amount for the notice
    global Decimal totalRemit { get; set; }

    /// NoticeCustomerTypeID can be retrieved from the definitions API
    global NoticeCustomerType customerTypeId { get; set; }

    /// Name or ISO 3166 code identifying the country that sent this notice.
    /// 
    /// This field supports many different country identifiers:
    ///  * Two character ISO 3166 codes
    ///  * Three character ISO 3166 codes
    ///  * Fully spelled out names of the country in ISO supported languages
    ///  * Common alternative spellings for many countries
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    /// Name or ISO 3166 code identifying the region within the country that sent this notice.
    /// 
    /// This field supports many different region identifiers:
    ///  * Two and three character ISO 3166 region codes
    ///  * Fully spelled out names of the region in ISO supported languages
    ///  * Common alternative spellings for many regions
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// The tax authority id of the notice
    global Integer taxAuthorityId { get; set; }

    /// The filing frequency of the notice
    global FilingFrequencyId filingFrequency { get; set; }

    /// The filing type of the notice
    global TaxNoticeFilingTypeId filingTypeId { get; set; }

    /// The ticket reference number of the notice
    global String ticketReferenceNo { get; set; }

    /// The ticket reference url of the notice
    global String ticketReferenceUrl { get; set; }

    /// The sales force case of the notice
    global String salesForceCase { get; set; }

    /// The URL to the sales force case
    global String salesForceCaseUrl { get; set; }

    /// The tax period of the notice
    global String taxPeriod { get; set; }

    /// The notice reason id
    global Integer reasonId { get; set; }

    /// The notice reason
    global String reason { get; set; }

    /// The tax notice type id
    global Integer typeId { get; set; }

    /// The tax notice type description
    global String type { get; set; }

    /// The notice customer funding options
    global FundingOption customerFundingOptionId { get; set; }

    /// The priority of the notice
    global NoticePriorityId priorityId { get; set; }

    /// Comments from the customer on this notice
    global String customerComment { get; set; }

    /// Indicator to hide from customer
    global Boolean hideFromCustomer { get; set; }

    /// Expected resolution date of the notice
    global DateTime expectedResolutionDate { get; set; }

    /// Indicator to show customer this resolution date
    global Boolean showResolutionDateToCustomer { get; set; }

    /// The unique ID number of the user that closed the notice
    global Integer closedByUserId { get; set; }

    /// The user who created the notice
    global String createdByUserName { get; set; }

    /// The unique ID number of the user that owns the notice
    global Integer ownedByUserId { get; set; }

    /// The description of the notice
    global String description { get; set; }

    /// The ava file form id of the notice
    global Integer avaFileFormId { get; set; }

    /// The id of the revenue contact
    global Integer revenueContactId { get; set; }

    /// The id of the compliance contact
    global Integer complianceContactId { get; set; }

    /// The document reference of the notice
    global String documentReference { get; set; }

    /// The jurisdiction name of the notice
    global String jurisdictionName { get; set; }

    /// The jurisdiction type of the notice
    global String jurisdictionType { get; set; }

    /// Additional comments on the notice
    global List<NoticeCommentModel> comments { get; set; }

    /// Finance details of the notice
    global List<NoticeFinanceModel> finances { get; set; }

    /// Notice Responsibility Details
    global List<NoticeResponsibilityDetailModel> responsibility { get; set; }

    /// Notice Root Cause Details
    global List<NoticeRootCauseDetailModel> rootCause { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }
}
