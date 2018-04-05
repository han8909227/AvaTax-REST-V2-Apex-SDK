global class IsoRegionModel extends ErrorResult
    {
        /// <summary>
        /// The two-character ISO 3166 country code this region belongs to
        /// </summary>
        global String countryCode { get; set; }

        /// <summary>
        /// The three character ISO 3166 region code
        /// </summary>
        global String code { get; set; }

        /// <summary>
        /// The full name, using localized characters, for this region
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// The word in the local language that classifies what type of a region this represents
        /// </summary>
        global String classification { get; set; }

        /// <summary>
        /// For the United States, this flag indicates whether a U.S. State participates in the Streamlined
        /// Sales Tax program. For countries other than the US, this flag is null.
        /// </summary>
        global Boolean streamlinedSalesTax { get; set; }
}