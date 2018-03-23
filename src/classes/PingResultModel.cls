global class PingResultModel extends ErrorResult
    {
        /// <summary>
        /// Version number
        /// </summary>
        global String version { get; set; }

        /// <summary>
        /// Returns true if you provided authentication for this API call; false if you did not.
        /// </summary>
        global Boolean authenticated { get; set; }

        /// <summary>
        /// Returns the type of authentication you provided, if authenticated
        /// </summary>
        global AuthenticationTypeId authenticationType { get; set; }

        /// <summary>
        /// The username of the currently authenticated user, if any.
        /// </summary>
        global String authenticatedUserName { get; set; }

        /// <summary>
        /// The ID number of the currently authenticated user, if any.
        /// </summary>
        global Long authenticatedUserId { get; set; }

        /// <summary>
        /// The ID number of the currently authenticated user's account, if any.
        /// </summary>
        global Long authenticatedAccountId { get; set; }
}