global class NewAccountModel extends ErrorResult
    {
        /// <summary>
        /// This is the ID number of the account that was created
        /// </summary>
        global Long accountId { get; set; }

        /// <summary>
        /// This is the email address to which credentials were mailed
        /// </summary>
        global String accountDetailsEmailedTo { get; set; }

        /// <summary>
        /// The date and time when this account was created
        /// </summary>
        global DateTime createdDate { get; set; }

        /// <summary>
        /// The date and time when account information was emailed to the user
        /// </summary>
        global DateTime emailedDate { get; set; }

        /// <summary>
        /// If this account includes any limitations, specify them here
        /// </summary>
        global String limitations { get; set; }

        /// <summary>
        /// The license key of the account that was created
        /// </summary>
        global String licenseKey { get; set; }
}