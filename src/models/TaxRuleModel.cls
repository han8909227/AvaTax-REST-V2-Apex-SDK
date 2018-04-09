/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a tax rule that changes the behavior of Avalara's tax engine for certain products in certain jurisdictions. */

global class TaxRuleModel extends ErrorResult
{

    /// The unique ID number of this tax rule.
    global Integer id { get; set; }

    /// The unique ID number of the company that owns this tax rule.
    global Integer? companyId { get; set; }

    /// The unique ID number of the tax code for this rule.
    /// When creating or updating a tax rule, you may specify either the taxCodeId value or the taxCode value.
    global Integer? taxCodeId { get; set; }

    /// The code string of the tax code for this rule.
    /// When creating or updating a tax rule, you may specify either the taxCodeId value or the taxCode value.
    global String taxCode { get; set; }

    /// For U.S. tax rules, this is the state's Federal Information Processing Standard (FIPS) code.
    global String stateFIPS { get; set; }

    /// The name of the jurisdiction to which this tax rule applies.
    global String jurisName { get; set; }

    /// The code of the jurisdiction to which this tax rule applies.
    global String jurisCode { get; set; }

    /// (DEPRECATED) The type of the jurisdiction to which this tax rule applies.
    /// NOTE: Use jurisdictionTypeId instead.
    global JurisTypeId? jurisTypeId { get; set; }

    /// The type of the jurisdiction to which this tax rule applies.
    global JurisdictionType? jurisdictionTypeId { get; set; }

    /// DEPRECATED - The type of customer usage to which this rule applies.
    /// Please use entityUseCode instead.
    global String customerUsageType { get; set; }

    /// The type of customer usage to which this rule applies.
    global String entityUseCode { get; set; }

    /// Indicates which tax types to which this rule applies.
    global MatchingTaxType? taxTypeId { get; set; }

    /// (DEPRECATED) Enumerated rate type to which this rule applies. Please use rateTypeCode instead.
    global RateType? rateTypeId { get; set; }

    /// Indicates the code of the rate type that applies to this rule. Use `/api/v2/definitions/ratetypes` for a full list of rate type codes.
    global String rateTypeCode { get; set; }

    /// This type value determines the behavior of the tax rule.
    /// You can specify that this rule controls the product's taxability or exempt / nontaxable status, the product's rate 
    /// (for example, if you have been granted an official ruling for your product's rate that differs from the official rate), 
    /// or other types of behavior.
    global TaxRuleTypeId? taxRuleTypeId { get; set; }

    /// Set this value to true if this tax rule applies in all jurisdictions.
    global Boolean? isAllJuris { get; set; }

    /// The corrected rate for this tax rule.
    global Decimal? value { get; set; }

    /// The maximum cap for the price of this item according to this rule.
    global Decimal? cap { get; set; }

    /// The per-unit threshold that must be met before this rule applies.
    global Decimal? threshold { get; set; }

    /// Custom option flags for this rule.
    global String options { get; set; }

    /// The first date at which this rule applies. If null, this rule will apply to all dates prior to the end date.
    global DateTime? effectiveDate { get; set; }

    /// The last date for which this rule applies. If null, this rule will apply to all dates after the effective date.
    global DateTime? endDate { get; set; }

    /// A friendly name for this tax rule.
    global String description { get; set; }

    /// For U.S. tax rules, this is the county's Federal Information Processing Standard (FIPS) code.
    global String countyFIPS { get; set; }

    /// If true, indicates this rule is for Sales Tax Pro.
    global Boolean? isSTPro { get; set; }

    /// Name or ISO 3166 code identifying the country where this rule will apply.
    /// 
    /// This field supports many different country identifiers:
    ///  * Two character ISO 3166 codes
    ///  * Three character ISO 3166 codes
    ///  * Fully spelled out names of the country in ISO supported languages
    ///  * Common alternative spellings for many countries
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    /// Name or ISO 3166 code identifying the region where this rule will apply.
    /// 
    /// This field supports many different region identifiers:
    ///  * Two and three character ISO 3166 region codes
    ///  * Fully spelled out names of the region in ISO supported languages
    ///  * Common alternative spellings for many regions
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    /// NOTE: Region is required for US and not required for non-US countries because the user may be either creating a Country-level or Region-level rule.
    global String region { get; set; }

    /// The sourcing types to which this rule applies.
    global Sourcing? sourcing { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// The group Id of tax types supported by Avalara. Refer to /api/v2/definitions/taxtypegroups for types we support.
    global String taxTypeGroup { get; set; }

    /// The Id of sub tax types supported by Avalara. Refer to /api/v2/definitions/taxsubtypes for types we support.
    global String taxSubType { get; set; }

    /// Id for TaxTypeMapping object
    global Integer? taxTypeMappingId { get; set; }

    /// Id for RateTypeTaxTypeMapping object
    global Integer? rateTypeTaxTypeMappingId { get; set; }

    /// Indicates the expression to use to determine whether this tax rule generates a non-passthrough tax.
    /// 
    /// Non-passthrough taxes are taxes that cannot be charged to the customer.
    global String nonPassthroughExpression { get; set; }

    /// The currency code to use for this rule.
    global String currencyCode { get; set; }

    /// For rules that only apply to one tax code program, this value indicates what program should be used for implementing this rule.
    global Integer? preferredProgramId { get; set; }

    /// For tax rules that are calculated using units of measurement, this indicates the unit of measurement type
    /// used to calculate the amounts for this rule.
    /// 
    /// For a list of units of measurement, please call `ListUnitsOfMeasurement()`.
    global Integer? uomId { get; set; }
}
