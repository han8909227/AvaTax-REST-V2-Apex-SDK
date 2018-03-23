public class CompanyConfigurationModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of the account to which this setting applies
        /// </summary>
        public Long companyId { get; set; }

        /// <summary>
        /// The category of the configuration setting. Avalara-defined categories include `AddressServiceConfig` and `TaxServiceConfig`. Customer-defined categories begin with `X-`.
        /// </summary>
        public String category { get; set; }

        /// <summary>
        /// The name of the configuration setting
        /// </summary>
        public String name { get; set; }

        /// <summary>
        /// The current value of the configuration setting
        /// </summary>
        public String value { get; set; }

        /// <summary>
        /// The date when this record was created.
        /// </summary>
        public DateTime createdDate { get; set; }

        /// <summary>
        /// The User ID of the user who created this record.
        /// </summary>
        public Long createdUserId { get; set; }

        /// <summary>
        /// The date/time when this record was last modified.
        /// </summary>
        public DateTime modifiedDate { get; set; }

        /// <summary>
        /// The user ID of the user who last modified this record.
        /// </summary>
        public Long modifiedUserId { get; set; }
}