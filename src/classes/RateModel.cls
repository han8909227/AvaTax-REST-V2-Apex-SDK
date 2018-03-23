global class RateModel extends ErrorResult
    {
        /// <summary>
        /// The sales tax rate for general tangible personal property in this jurisdiction.
        /// </summary>
        global Decimal rate { get; set; }

        /// <summary>
        /// A readable name of the tax or taxing jurisdiction related to this tax rate.
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// The type of jurisdiction associated with this tax rate.
        /// </summary>
        global JurisdictionType type { get; set; }
}