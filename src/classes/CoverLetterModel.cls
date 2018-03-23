global class CoverLetterModel extends ErrorResult
    {
        /// <summary>
        /// A unique ID number representing a cover letter sent with a CertExpress invitation.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The unique ID number of the AvaTax company that received this certificate.
        /// </summary>
        global Long companyId { get; set; }

        /// <summary>
        /// The title used when sending the cover letter.
        /// </summary>
        global String title { get; set; }

        /// <summary>
        /// The subject message used when sending the cover letter via email.
        /// </summary>
        global String subject { get; set; }

        /// <summary>
        /// A full description of the cover letter's contents and message.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// The date when this record was created.
        /// </summary>
        global DateTime createdDate { get; set; }

        /// <summary>
        /// The date/time when this record was last modified.
        /// </summary>
        global DateTime modifiedDate { get; set; }

        /// <summary>
        /// Is this cover letter active
        /// </summary>
        global Boolean active { get; set; }

        /// <summary>
        /// How many pages this cover letter encompasses
        /// </summary>
        global Long pageCount { get; set; }

        /// <summary>
        /// The file name of the cover letter template
        /// </summary>
        global String templateFilename { get; set; }

        /// <summary>
        /// The version number of the template
        /// </summary>
        global Long version { get; set; }

}