global class TransactionAddressModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this address.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The unique ID number of the document to which this address belongs.
        /// </summary>
        global Long transactionId { get; set; }

        /// <summary>
        /// The boundary level at which this address was validated.
        /// </summary>
        global BoundaryLevel boundaryLevel { get; set; }

        /// <summary>
        /// The first line of the address.
        /// </summary>
        global String line1 { get; set; }

        /// <summary>
        /// The second line of the address.
        /// </summary>
        global String line2 { get; set; }

        /// <summary>
        /// The third line of the address.
        /// </summary>
        global String line3 { get; set; }

        /// <summary>
        /// The city for the address.
        /// </summary>
        global String city { get; set; }

        /// <summary>
        /// The region, state, or province for the address.
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// The postal code or zip code for the address.
        /// </summary>
        global String postalCode { get; set; }

        /// <summary>
        /// The country for the address.
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// The unique ID number of the tax region for this address.
        /// </summary>
        global Long taxRegionId { get; set; }

        /// <summary>
        /// Latitude for this address (CALC - 13394)
        /// </summary>
        global String latitude { get; set; }

        /// <summary>
        /// Longitude for this address (CALC - 13394)
        /// </summary>
        global String longitude { get; set; }
}