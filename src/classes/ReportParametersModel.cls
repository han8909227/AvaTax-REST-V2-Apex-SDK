global class ReportParametersModel extends ErrorResult
    {
        /// <summary>
        /// The start date filter used for your report
        /// </summary>
        global DateTime startDate { get; set; }

        /// <summary>
        /// The end date filter used for your report
        /// </summary>
        global DateTime endDate { get; set; }

        /// <summary>
        /// The country filter used for your report
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// The state filter used for your report
        /// </summary>
        global String state { get; set; }

        /// <summary>
        /// The date type filter used for your report
        /// </summary>
        global String dateFilter { get; set; }

        /// <summary>
        /// The doc type filter used for your report
        /// </summary>
        global String docType { get; set; }

        /// <summary>
        /// The date format used for your report
        /// </summary>
        global String dateFormat { get; set; }

        /// <summary>
        /// The culture used your report
        /// </summary>
        global String culture { get; set; }

        /// <summary>
        /// The currency code used for your report
        /// </summary>
        global String currencyCode { get; set; }
}