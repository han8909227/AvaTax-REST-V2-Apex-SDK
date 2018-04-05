global class RateTypeModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this tax authority.
        /// </summary>
        global String id { get; set; }

        /// <summary>
        /// Description of this rate type.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// Country code for this rate type
        /// </summary>
        global String country { get; set; }

}