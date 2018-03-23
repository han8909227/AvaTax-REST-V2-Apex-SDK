global class TaxAuthorityFormModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of the tax authority.
        /// </summary>
        global Long taxAuthorityId { get; set; }

        /// <summary>
        /// The form name of the form for this tax authority.
        /// </summary>
        global String formName { get; set; }
}