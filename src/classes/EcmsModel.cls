/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Exempt certificate */

global class EcmsModel extends ErrorResult
{

    // The calc_id associated with a certificate in CertCapture.
    global Integer exemptCertId { get; set; }

    // Company ID
    global Integer companyId { get; set; }

    // Customer code
    global String customerCode { get; set; }

    // Customer name
    global String customerName { get; set; }

    // Address line 1
    global String address1 { get; set; }

    // Address line 2
    global String address2 { get; set; }

    // Address line 3
    global String address3 { get; set; }

    // City
    global String city { get; set; }

    // Name or ISO 3166 code identifying the region within the country.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    // Postal code / zip code
    global String postalCode { get; set; }

    // Name or ISO 3166 code identifying the country.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    // The type of exemption certificate. Permitted values are: Blanket and Single.
    global ExemptCertTypeId exemptCertTypeId { get; set; }

    // Document Reference Number, in the case of single-use exemption certificates, the DocumentCode or PurchaseOrderNo to which the certificate should apply.
    global String documentRefNo { get; set; }

    // Business type the customer belongs to.
    global Integer businessTypeId { get; set; }

    // Other description for this business type
    global String businessTypeOtherDescription { get; set; }

    // Exempt reason associated with the certificate, coded by CustomerUsageType.
    // Example: A - Federal Government.
    global String exemptReasonId { get; set; }

    // Other description for exempt reason i.e. Populated on if exemptReasonId is 'L' - Other.
    global String exemptReasonOtherDescription { get; set; }

    // Effective date for this exempt certificate
    global DateTime effectiveDate { get; set; }

    // A list of applicable regions for this exempt certificate.
    // 
    // To list more than one applicable region, separate the list of region codes with commas.
    global String regionsApplicable { get; set; }

    // Status for this exempt certificate
    global ExemptCertStatusId exemptCertStatusId { get; set; }

    // Date when this exempt certificate was created
    global DateTime createdDate { get; set; }

    // Date when last transaction with this exempt certificate happened
    global DateTime lastTransactionDate { get; set; }

    // When this exempt certificate will expire
    global DateTime expiryDate { get; set; }

    // User that creates the certificate
    global Integer createdUserId { get; set; }

    // Date when this exempt certificate was modified
    global DateTime modifiedDate { get; set; }

    // Who modified this exempt certificate
    global Integer modifiedUserId { get; set; }

    // Name or ISO 3166 code identifying the country that issued this ECMS certificate.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String countryIssued { get; set; }

    // If the certificate record was synced from an AvaTax Certs account(as opposed to being entered in ECMS directly), 
    // the unique AvaTax Certs identifier for the certificate record. Usually same as the Id of a Certificate.
    global String avaCertId { get; set; }

    // Review status for this exempt certificate
    global ExemptCertReviewStatusId exemptCertReviewStatusId { get; set; }

    // Exempt Cert details
    global List<EcmsDetailModel> details { get; set; }
}
