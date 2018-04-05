global class ExposureZoneModel extends ErrorResult
    {
        /// <summary>
        /// A unique ID number representing this exposure zone.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The unique ID number of the AvaTax company that recorded this customer.
        /// </summary>
        global Long companyId { get; set; }

        /// <summary>
        /// The short name of this exposure zone, suitable for use in a drop-down list.
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// A tag indicating
        /// </summary>
        global String tag { get; set; }

        /// <summary>
        /// A more complete description of this exposure zone, suitable for use as a tooltip or help text.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// The date when this record was created.
        /// </summary>
        global DateTime created { get; set; }

        /// <summary>
        /// The date/time when this record was last modified.
        /// </summary>
        global DateTime modified { get; set; }

        /// <summary>
        /// Two or three character ISO 3166 region, province, or state name of this exposure zone.
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// Two character ISO 3166 county code for the country component of this exposure zone.
        /// </summary>
        global String country { get; set; }

}