global class JurisdictionModel extends ErrorResult
    {
        /// <summary>
        /// The code that is used to identify this jurisdiction
        /// </summary>
        global String code { get; set; }

        /// <summary>
        /// The name of this jurisdiction
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// The type of the jurisdiction, indicating whether it is a country, state/region, city, for example.
        /// </summary>
        global JurisdictionType type { get; set; }

        /// <summary>
        /// The base rate of tax specific to this jurisdiction.
        /// </summary>
        global Decimal rate { get; set; }

        /// <summary>
        /// The "Sales" tax rate specific to this jurisdiction.
        /// </summary>
        global Decimal salesRate { get; set; }

        /// <summary>
        /// The Avalara-supplied signature code for this jurisdiction.
        /// </summary>
        global String signatureCode { get; set; }

        /// <summary>
        /// The state assigned code for this jurisdiction, if any.
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// The "Seller's Use" tax rate specific to this jurisdiction.
        /// </summary>
        global Decimal useRate { get; set; }

        /// <summary>
        /// The city name of this jurisdiction
        /// </summary>
        global String city { get; set; }

        /// <summary>
        /// The county name of this jurisdiction
        /// </summary>
        global String county { get; set; }

        /// <summary>
        /// The Country name of this jurisdiction
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// A short name of the jurisidiction
        /// </summary>
        global String shortName { get; set; }

        /// <summary>
        /// State FIPS code
        /// </summary>
        global String stateFips { get; set; }

        /// <summary>
        /// County FIPS code
        /// </summary>
        global String countyFips { get; set; }

        /// <summary>
        /// City FIPS code
        /// </summary>
        global String placeFips { get; set; }

        /// <summary>
        /// Unique AvaTax Id of this Jurisdiction
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The date this jurisdiction starts to take effect on tax calculations
        /// </summary>
        global DateTime effectiveDate { get; set; }

        /// <summary>
        /// The date this jurisdiction stops to take effect on tax calculations
        /// </summary>
        global DateTime endDate { get; set; }
}