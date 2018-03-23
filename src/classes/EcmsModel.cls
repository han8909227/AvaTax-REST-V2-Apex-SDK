global class EcmsModel extends ErrorResult
{
    /// Exempt certificate ID
    global Long exemptCertId { get; set; }

    /// Company ID
    global Long companyId { get; set; }

    /// Customer code
    global String customerCode { get; set; }

    /// Customer name
    global String customerName { get; set; }

    /// Address line 1
    global String address1 { get; set; }

    /// Address line 2
    global String address2 { get; set; }

    /// Address line 3
    global String address3 { get; set; }

    /// City
    global String city { get; set; }

    /// Region
    global String region { get; set; }

    /// Postal code / zip code
    global String postalCode { get; set; }

    /// Country
    global String country { get; set; }

    /// Exempt cert type
    global ExemptCertTypeId exemptCertTypeId { get; set; }

    /// Document Reference Number
    global String documentRefNo { get; set; }

    /// Business type
    //global Byte businessTypeId { get; set; } --need to look for alternative

    /// Other description for this business type
    global String businessTypeOtherDescription { get; set; }

    /// Exempt reason ID
    global String exemptReasonId { get; set; }

    /// Other description for exempt reason
    global String exemptReasonOtherDescription { get; set; }

    /// Effective date for this exempt certificate
    global DateTime effectiveDate { get; set; }

    /// Applicable regions for this exempt certificate
    global String regionsApplicable { get; set; }

    /// Status for this exempt certificate
    global ExemptCertStatusId exemptCertStatusId { get; set; }

    /// Date when this exempt certificate was created
    global DateTime createdDate { get; set; }

    /// Date when last transaction with this exempt certificate happened
    global DateTime lastTransactionDate { get; set; }

    /// When this exempt certificate will expire
    global DateTime expiryDate { get; set; }

    /// User that creates the certificate
    global Long createdUserId { get; set; }

    /// Date when this exempt certificate was modified
    global DateTime modifiedDate { get; set; }

    /// Who modified this exempt certificate
    global Long modifiedUserId { get; set; }

    /// Which country issued this exempt certificate
    global String countryIssued { get; set; }

    /// Certificate ID for AvaTax?
    global String avaCertId { get; set; }

    /// Review status for this exempt certificate
    global ExemptCertReviewStatusId exemptCertReviewStatusId { get; set; }

    /// Exempt Cert details
    global List<EcmsDetailModel> details { get; set; }
}