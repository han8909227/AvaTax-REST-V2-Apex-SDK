global class LocationQuestionModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this location setting type
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// This is the prompt for this question
        /// </summary>
        global String question { get; set; }

        /// <summary>
        /// If additional information is available about the location setting, this contains descriptive text to help
        /// you identify the correct value to provide in this setting.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// If available, this regular expression will verify that the input from the user is in the expected format.
        /// </summary>
        global String regularExpression { get; set; }

        /// <summary>
        /// If available, this is an example value that you can demonstrate to the user to show what is expected.
        /// </summary>
        global String exampleValue { get; set; }

        /// <summary>
        /// Indicates which jurisdiction requires this question
        /// </summary>
        global String jurisdictionName { get; set; }

        /// <summary>
        /// Indicates which type of jurisdiction requires this question
        /// </summary>
        global JurisdictionType jurisdictionType { get; set; }

        /// <summary>
        /// Indicates the country that this jurisdiction belongs to
        /// </summary>
        global String jurisdictionCountry { get; set; }

        /// <summary>
        /// Indicates the state, region, or province that this jurisdiction belongs to
        /// </summary>
        global String jurisdictionRegion { get; set; }
}