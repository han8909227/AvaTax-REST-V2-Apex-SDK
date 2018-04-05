global class TaxAuthorityModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this tax authority.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The friendly name of this tax authority.
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// The type of this tax authority.
        /// </summary>
        global Long taxAuthorityTypeId { get; set; }

        /// <summary>
        /// The unique ID number of the jurisdiction for this tax authority.
        /// </summary>
        global Long jurisdictionId { get; set; }
}