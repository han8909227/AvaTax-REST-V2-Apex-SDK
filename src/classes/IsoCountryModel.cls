global class IsoCountryModel extends ErrorResult
    {
        /// <summary>
        /// The two character ISO 3166 country code
        /// </summary>
        global String code { get; set; }

        /// <summary>
        /// The full name of this country as it is known in US English
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// True if this country is a member of the European Union
        /// </summary>
        global Boolean isEuropeanUnion { get; set; }
}