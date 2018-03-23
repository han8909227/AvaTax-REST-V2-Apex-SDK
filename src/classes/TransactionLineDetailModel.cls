global class TransactionLineDetailModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this tax detail.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The unique ID number of the line within this transaction.
        /// </summary>
        global Long transactionLineId { get; set; }

        /// <summary>
        /// The unique ID number of this transaction.
        /// </summary>
        global Long transactionId { get; set; }

        /// <summary>
        /// The unique ID number of the address used for this tax detail.
        /// </summary>
        global Long addressId { get; set; }

        /// <summary>
        /// The two character ISO 3166 country code of the country where this tax detail is assigned.
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// The two-or-three character ISO region code for the region where this tax detail is assigned.
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// For U.S. transactions, the Federal Information Processing Standard (FIPS) code for the county where this tax detail is assigned.
        /// </summary>
        global String countyFIPS { get; set; }

        /// <summary>
        /// For U.S. transactions, the Federal Information Processing Standard (FIPS) code for the state where this tax detail is assigned.
        /// </summary>
        global String stateFIPS { get; set; }

        /// <summary>
        /// The amount of this line that was considered exempt in this tax detail.
        /// </summary>
        global Decimal exemptAmount { get; set; }

        /// <summary>
        /// The unique ID number of the exemption reason for this tax detail.
        /// </summary>
        global Long exemptReasonId { get; set; }

        /// <summary>
        /// True if this detail element represented an in-state transaction.
        /// </summary>
        global Boolean inState { get; set; }

        /// <summary>
        /// The code of the jurisdiction to which this tax detail applies.
        /// </summary>
        global String jurisCode { get; set; }

        /// <summary>
        /// The name of the jurisdiction to which this tax detail applies.
        /// </summary>
        global String jurisName { get; set; }

        /// <summary>
        /// The unique ID number of the jurisdiction to which this tax detail applies.
        /// </summary>
        global Long jurisdictionId { get; set; }

        /// <summary>
        /// The Avalara-specified signature code of the jurisdiction to which this tax detail applies.
        /// </summary>
        global String signatureCode { get; set; }

        /// <summary>
        /// The state assigned number of the jurisdiction to which this tax detail applies.
        /// </summary>
        global String stateAssignedNo { get; set; }

        /// <summary>
        /// The type of the jurisdiction to which this tax detail applies.
        /// </summary>
        global JurisTypeId jurisType { get; set; }

        /// <summary>
        /// The amount of this line item that was considered nontaxable in this tax detail.
        /// </summary>
        global Decimal nonTaxableAmount { get; set; }

        /// <summary>
        /// The rule according to which portion of this detail was considered nontaxable.
        /// </summary>
        global Long nonTaxableRuleId { get; set; }

        /// <summary>
        /// The type of nontaxability that was applied to this tax detail.
        /// </summary>
        global TaxRuleTypeId nonTaxableType { get; set; }

        /// <summary>
        /// The rate at which this tax detail was calculated.
        /// </summary>
        global Decimal rate { get; set; }

        /// <summary>
        /// The unique ID number of the rule according to which this tax detail was calculated.
        /// </summary>
        global Long rateRuleId { get; set; }

        /// <summary>
        /// The unique ID number of the source of the rate according to which this tax detail was calculated.
        /// </summary>
        global Long rateSourceId { get; set; }

        /// <summary>
        /// For Streamlined Sales Tax customers, the SST Electronic Return code under which this tax detail should be applied.
        /// </summary>
        global String serCode { get; set; }

        /// <summary>
        /// Indicates whether this tax detail applies to the origin or destination of the transaction.
        /// </summary>
        global Sourcing sourcing { get; set; }

        /// <summary>
        /// The amount of tax for this tax detail.
        /// </summary>
        global Decimal tax { get; set; }

        /// <summary>
        /// The taxable amount of this tax detail.
        /// </summary>
        global Decimal taxableAmount { get; set; }

        /// <summary>
        /// The type of tax that was calculated. Depends on the company's nexus settings as well as the jurisdiction's tax laws.
        /// </summary>
        global TaxType taxType { get; set; }

        /// <summary>
        /// The name of the tax against which this tax amount was calculated.
        /// </summary>
        global String taxName { get; set; }

        /// <summary>
        /// The type of the tax authority to which this tax will be remitted.
        /// </summary>
        global Long taxAuthorityTypeId { get; set; }

        /// <summary>
        /// The unique ID number of the tax region.
        /// </summary>
        global Long taxRegionId { get; set; }

        /// <summary>
        /// The amount of tax that was calculated. This amount may be different if a tax override was used.
        /// If the customer specified a tax override, this calculated tax value represents the amount of tax that would
        /// have been charged if Avalara had calculated the tax for the rule.
        /// </summary>
        global Decimal taxCalculated { get; set; }

        /// <summary>
        /// The amount of tax override that was specified for this tax line.
        /// </summary>
        global Decimal taxOverride { get; set; }

        /// <summary>
        /// (DEPRECATED) The rate type for this tax detail. Please use rateTypeCode instead.
        /// </summary>
        global RateType rateType { get; set; }

        /// <summary>
        /// Indicates the code of the rate type that was used to calculate this tax detail. Use `/api/v2/definitions/ratetypes` for a full list of rate type codes.
        /// </summary>
        global String rateTypeCode { get; set; }

        /// <summary>
        /// Number of units in this line item that were calculated to be taxable according to this rate detail.
        /// </summary>
        global Decimal taxableUnits { get; set; }

        /// <summary>
        /// Number of units in this line item that were calculated to be nontaxable according to this rate detail.
        /// </summary>
        global Decimal nonTaxableUnits { get; set; }

        /// <summary>
        /// Number of units in this line item that were calculated to be exempt according to this rate detail.
        /// </summary>
        global Decimal exemptUnits { get; set; }

        /// <summary>
        /// When calculating units, what basis of measurement did we use for calculating the units?
        /// </summary>
        global String unitOfBasis { get; set; }
}