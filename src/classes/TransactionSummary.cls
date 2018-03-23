global class TransactionSummary
    {
        /// <summary>
        /// Two character ISO-3166 country code.
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// Two or three character ISO region, state or province code, if applicable.
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// The type of jurisdiction that collects this tax.
        /// </summary>
        global JurisdictionType jurisType { get; set; }

        /// <summary>
        /// Jurisdiction Code for the taxing jurisdiction
        /// </summary>
        global String jurisCode { get; set; }

        /// <summary>
        /// The name of the jurisdiction that collects this tax.
        /// </summary>
        global String jurisName { get; set; }

        /// <summary>
        /// The unique ID of the Tax Authority Type that collects this tax.
        /// </summary>
        global Integer taxAuthorityType { get; set; }

        /// <summary>
        /// The state assigned number of the jurisdiction that collects this tax.
        /// </summary>
        global String stateAssignedNo { get; set; }

        /// <summary>
        /// The tax type of this tax.
        /// </summary>
        global TaxType taxType { get; set; }

        /// <summary>
        /// The name of the tax.
        /// </summary>
        global String taxName { get; set; }

        /// <summary>
        /// Group code when special grouping is enabled.
        /// </summary>
        global String taxGroup { get; set; }

        /// <summary>
        /// (DEPRECATED) Indicates the tax rate type. Please use rateTypeCode instead.
        /// </summary>
        global RateType rateType { get; set; }

        /// <summary>
        /// Indicates the code of the rate type. Use `/api/v2/definitions/ratetypes` for a full list of rate type codes.
        /// </summary>
        global String rateTypeCode { get; set; }

        /// <summary>
        /// Tax Base - The adjusted taxable amount.
        /// </summary>
        global Decimal taxable { get; set; }

        /// <summary>
        /// Tax Rate - The rate of taxation, as a fraction of the amount.
        /// </summary>
        global Decimal rate { get; set; }

        /// <summary>
        /// Tax amount - The calculated tax (Base * Rate).
        /// </summary>
        global Decimal tax { get; set; }

        /// <summary>
        /// Tax Calculated by Avalara AvaTax. This may be overriden by a TaxOverride.TaxAmount.
        /// </summary>
        global Decimal taxCalculated { get; set; }

        /// <summary>
        /// The amount of the transaction that was non-taxable.
        /// </summary>
        global Decimal nonTaxable { get; set; }

        /// <summary>
        /// The amount of the transaction that was exempt.
        /// </summary>
        global Decimal exemption { get; set; }

}