global class FreeTrialRequestModel extends ErrorResult
    {
        /// <summary>
        /// The first or given name of the user requesting a free trial.
        /// </summary>
        global String firstName { get; set; }

        /// <summary>
        /// The last or family name of the user requesting a free trial.
        /// </summary>
        global String lastName { get; set; }

        /// <summary>
        /// The email address of the user requesting a free trial.
        /// </summary>
        global String email { get; set; }

        /// <summary>
        /// The company or organizational name for this free trial. If this account is for personal use, it is acceptable 
        /// to use your full name here.
        /// </summary>
        global String company { get; set; }

        /// <summary>
        /// The phone number of the person requesting the free trial.
        /// </summary>
        global String phone { get; set; }
}