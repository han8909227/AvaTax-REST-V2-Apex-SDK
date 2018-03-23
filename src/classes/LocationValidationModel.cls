global class LocationValidationModel extends ErrorResult
    {
        /// <summary>
        /// True if the location has a value for each jurisdiction-required setting.
        /// The user is required to ensure that the values are correct according to the jurisdiction; this flag
        /// does not indicate whether the taxing jurisdiction has accepted the data you have provided.
        /// </summary>
        global Boolean settingsValidated { get; set; }

        /// <summary>
        /// A list of settings that must be defined for this location
        /// </summary>
        global List<LocationQuestionModel> requiredSettings { get; set; }

}