global class EntityUseCodeModel extends ErrorResult
    {
        /// <summary>
        /// The Avalara-recognized entity use code for this definition
        /// </summary>
        global String code { get; set; }

        /// <summary>
        /// The name of this entity use code
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// Text describing the meaning of this use code
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// A list of countries where this use code is valid
        /// </summary>
        global List<String> validCountries { get; set; }
}