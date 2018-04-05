global class LoginVerificationInputModel extends ErrorResult
    {
        /// <summary>
        /// CompanyId that we are verifying the login information for
        /// </summary>
        global Long companyId { get; set; }

        /// <summary>
        /// AccountId of the login verification
        /// </summary>
        global Long accountId { get; set; }

        /// <summary>
        /// Region of the verification request
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// Username that we are using for verification
        /// </summary>
        global String username { get; set; }

        /// <summary>
        /// Password we are using for verification
        /// </summary>
        global String password { get; set; }

        /// <summary>
        /// Additional options of the verification
        /// </summary>
        global String additionalOptions { get; set; }

        /// <summary>
        /// Bulk Request Id of the verification
        /// </summary>
        global Long bulkRequestId { get; set; }

        /// <summary>
        /// Priority of the verification request
        /// </summary>
        global Long priority { get; set; }

}