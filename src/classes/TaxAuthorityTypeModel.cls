global class TaxAuthorityTypeModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this tax Authority customer type.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The description name of this tax authority type.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// Tax Authority Group
        /// </summary>
        global String taxAuthorityGroup { get; set; }
}