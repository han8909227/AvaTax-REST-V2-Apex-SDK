global class FundingInitiateModel extends ErrorResult
    {
        /// <summary>
        /// Set this value to true to request an email to the recipient
        /// </summary>
        global Boolean requestEmail { get; set; }

        /// <summary>
        /// If you have requested an email for funding setup, this is the recipient who will receive an 
        /// email inviting them to setup funding configuration for Avalara Managed Returns. The recipient can
        /// then click on a link in the email and setup funding configuration for this company.
        /// </summary>
        global String fundingEmailRecipient { get; set; }

        /// <summary>
        /// Set this value to true to request an HTML-based funding widget that can be embedded within an 
        /// existing user interface. A user can then interact with the HTML-based funding widget to set up
        /// funding information for the company.
        /// </summary>
        global Boolean requestWidget { get; set; }
}