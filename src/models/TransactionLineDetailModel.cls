/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* An individual tax detail element. Represents the amount of tax calculated for a particular jurisdiction, for a particular line in an invoice. */

global class TransactionLineDetailModel extends ErrorResult
{

    /// The unique ID number of this tax detail.
    global Int64? id { get; set; }

    /// The unique ID number of the line within this transaction.
    global Int64? transactionLineId { get; set; }

    /// The unique ID number of this transaction.
    global Int64? transactionId { get; set; }

    /// The unique ID number of the address used for this tax detail.
    global Int64? addressId { get; set; }

    /// The two character ISO 3166 country code of the country where this tax detail is assigned.
    global String country { get; set; }

    /// The two-or-three character ISO region code for the region where this tax detail is assigned.
    global String region { get; set; }

    /// For U.S. transactions, the Federal Information Processing Standard (FIPS) code for the county where this tax detail is assigned.
    global String countyFIPS { get; set; }

    /// For U.S. transactions, the Federal Information Processing Standard (FIPS) code for the state where this tax detail is assigned.
    global String stateFIPS { get; set; }

    /// The amount of this line that was considered exempt in this tax detail.
    global Decimal? exemptAmount { get; set; }

    /// The unique ID number of the exemption reason for this tax detail.
    global Integer? exemptReasonId { get; set; }

    /// True if this detail element represented an in-state transaction.
    global Boolean? inState { get; set; }

    /// The code of the jurisdiction to which this tax detail applies.
    global String jurisCode { get; set; }

    /// The name of the jurisdiction to which this tax detail applies.
    global String jurisName { get; set; }

    /// The unique ID number of the jurisdiction to which this tax detail applies.
    global Integer? jurisdictionId { get; set; }

    /// The Avalara-specified signature code of the jurisdiction to which this tax detail applies.
    global String signatureCode { get; set; }

    /// The state assigned number of the jurisdiction to which this tax detail applies.
    global String stateAssignedNo { get; set; }

    /// (DEPRECATED) The type of the jurisdiction to which this tax detail applies.
    /// NOTE: Use jurisdictionTypeId instead.
    global JurisTypeId? jurisType { get; set; }

    /// The type of the jurisdiction in which this tax detail applies.
    global JurisdictionType? jurisdictionType { get; set; }

    /// The amount of this line item that was considered nontaxable in this tax detail.
    global Decimal? nonTaxableAmount { get; set; }

    /// The rule according to which portion of this detail was considered nontaxable.
    global Integer? nonTaxableRuleId { get; set; }

    /// The type of nontaxability that was applied to this tax detail.
    global TaxRuleTypeId? nonTaxableType { get; set; }

    /// The rate at which this tax detail was calculated.
    global Decimal? rate { get; set; }

    /// The unique ID number of the rule according to which this tax detail was calculated.
    global Integer? rateRuleId { get; set; }

    /// The unique ID number of the source of the rate according to which this tax detail was calculated.
    global Integer? rateSourceId { get; set; }

    /// For Streamlined Sales Tax customers, the SST Electronic Return code under which this tax detail should be applied.
    global String serCode { get; set; }

    /// Indicates whether this tax detail applies to the origin or destination of the transaction.
    global Sourcing? sourcing { get; set; }

    /// The amount of tax for this tax detail.
    global Decimal? tax { get; set; }

    /// The taxable amount of this tax detail.
    global Decimal? taxableAmount { get; set; }

    /// The type of tax that was calculated. Depends on the company's nexus settings as well as the jurisdiction's tax laws.
    global TaxType? taxType { get; set; }

    /// The name of the tax against which this tax amount was calculated.
    global String taxName { get; set; }

    /// The type of the tax authority to which this tax will be remitted.
    global Integer? taxAuthorityTypeId { get; set; }

    /// The unique ID number of the tax region.
    global Integer? taxRegionId { get; set; }

    /// The amount of tax that was calculated. This amount may be different if a tax override was used.
    /// If the customer specified a tax override, this calculated tax value represents the amount of tax that would
    /// have been charged if Avalara had calculated the tax for the rule.
    global Decimal? taxCalculated { get; set; }

    /// The amount of tax override that was specified for this tax line.
    global Decimal? taxOverride { get; set; }

    /// (DEPRECATED) The rate type for this tax detail. Please use rateTypeCode instead.
    global RateType? rateType { get; set; }

    /// Indicates the code of the rate type that was used to calculate this tax detail. Use `/api/v2/definitions/ratetypes` for a full list of rate type codes.
    global String rateTypeCode { get; set; }

    /// Number of units in this line item that were calculated to be taxable according to this rate detail.
    global Decimal? taxableUnits { get; set; }

    /// Number of units in this line item that were calculated to be nontaxable according to this rate detail.
    global Decimal? nonTaxableUnits { get; set; }

    /// Number of units in this line item that were calculated to be exempt according to this rate detail.
    global Decimal? exemptUnits { get; set; }

    /// When calculating units, what basis of measurement did we use for calculating the units?
    global String unitOfBasis { get; set; }

    /// True if this value is a non-passthrough tax.
    /// 
    /// A non-passthrough tax is a tax that may not be charged to a customer; it must be paid directly by the company.
    global Boolean? isNonPassThru { get; set; }
}
