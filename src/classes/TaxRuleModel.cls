global class TaxRuleModel extends ErrorResult
{
    /// <summary>
    /// The unique ID number of this tax rule.
    /// </summary>
    global Long id { get; set; }

    /// <summary>
    /// The unique ID number of the company that owns this tax rule.
    /// </summary>
    global Long companyId { get; set; }

    /// <summary>
    /// The unique ID number of the tax code for this rule.
    /// When creating or updating a tax rule, you may specify either the taxCodeId value or the taxCode value.
    /// </summary>
    global Long taxCodeId { get; set; }

    /// <summary>
    /// The code string of the tax code for this rule.
    /// When creating or updating a tax rule, you may specify either the taxCodeId value or the taxCode value.
    /// </summary>
    global String taxCode { get; set; }

    /// <summary>
    /// For U.S. tax rules, this is the state's Federal Information Processing Standard (FIPS) code.
    /// </summary>
    global String stateFIPS { get; set; }

    /// <summary>
    /// The name of the jurisdiction to which this tax rule applies.
    /// </summary>
    global String jurisName { get; set; }

    /// <summary>
    /// The code of the jurisdiction to which this tax rule applies.
    /// </summary>
    global String jurisCode { get; set; }

    /// <summary>
    /// The type of the jurisdiction to which this tax rule applies.
    /// </summary>
    global JurisTypeId jurisTypeId { get; set; }

    /// <summary>
    /// The type of customer usage to which this rule applies.
    /// </summary>
    global String customerUsageType { get; set; }

    /// <summary>
    /// Indicates which tax types to which this rule applies.
    /// </summary>
    global MatchingTaxType taxTypeId { get; set; }

    /// <summary>
    /// (DEPRECATED) Enumerated rate type to which this rule applies. Please use rateTypeCode instead.
    /// </summary>
    global RateType rateTypeId { get; set; }

    /// <summary>
    /// Indicates the code of the rate type that applies to this rule. Use `/api/v2/definitions/ratetypes` for a full list of rate type codes.
    /// </summary>
    global String rateTypeCode { get; set; }

    /// <summary>
    /// This type value determines the behavior of the tax rule.
    /// You can specify that this rule controls the product's taxability or exempt / nontaxable status, the product's rate 
    /// (for example, if you have been granted an official ruling for your product's rate that differs from the official rate), 
    /// or other types of behavior.
    /// </summary>
    global TaxRuleTypeId taxRuleTypeId { get; set; }

    /// <summary>
    /// Set this value to true if this tax rule applies in all jurisdictions.
    /// </summary>
    global Boolean isAllJuris { get; set; }

    /// <summary>
    /// The corrected rate for this tax rule.
    /// </summary>
    global Decimal value { get; set; }

    /// <summary>
    /// The maximum cap for the price of this item according to this rule.
    /// </summary>
    global Decimal cap { get; set; }

    /// <summary>
    /// The per-unit threshold that must be met before this rule applies.
    /// </summary>
    global Decimal threshold { get; set; }

    /// <summary>
    /// Custom option flags for this rule.
    /// </summary>
    global String options { get; set; }

    /// <summary>
    /// The first date at which this rule applies. If null, this rule will apply to all dates prior to the end date.
    /// </summary>
    global DateTime effectiveDate { get; set; }

    /// <summary>
    /// The last date for which this rule applies. If null, this rule will apply to all dates after the effective date.
    /// </summary>
    global DateTime endDate { get; set; }

    /// <summary>
    /// A friendly name for this tax rule.
    /// </summary>
    global String description { get; set; }

    /// <summary>
    /// For U.S. tax rules, this is the county's Federal Information Processing Standard (FIPS) code.
    /// </summary>
    global String countyFIPS { get; set; }

    /// <summary>
    /// If true, indicates this rule is for Sales Tax Pro.
    /// </summary>
    global Boolean isSTPro { get; set; }

    /// <summary>
    /// The two character ISO 3166 country code for the locations where this rule applies.
    /// </summary>
    global String country { get; set; }

    /// <summary>
    /// The state, region, or province name for the locations where this rule applies.
    /// </summary>
    global String region { get; set; }

    /// <summary>
    /// The sourcing types to which this rule applies.
    /// </summary>
    global Sourcing sourcing { get; set; }

    /// <summary>
    /// The date when this record was created.
    /// </summary>
    global DateTime createdDate { get; set; }

    /// <summary>
    /// The User ID of the user who created this record.
    /// </summary>
    global Long createdUserId { get; set; }

    /// <summary>
    /// The date/time when this record was last modified.
    /// </summary>
    global DateTime modifiedDate { get; set; }

    /// <summary>
    /// The user ID of the user who last modified this record.
    /// </summary>
    global Long modifiedUserId { get; set; }

    /// <summary>
    /// The group Id of tax types supported by Avalara. Refer to /api/v2/definitions/taxtypegroups for types we support.
    /// </summary>
    global String taxTypeGroup { get; set; }

    /// <summary>
    /// The Id of sub tax types supported by Avalara. Refer to /api/v2/definitions/taxsubtypes for types we support.
    /// </summary>
    global String taxSubType { get; set; }

    /// <summary>
    /// Id for TaxTypeMapping object
    /// </summary>
    global Long taxTypeMappingId { get; set; }

    /// <summary>
    /// Id for RateTypeTaxTypeMapping object
    /// </summary>
    global Long rateTypeTaxTypeMappingId { get; set; }
}