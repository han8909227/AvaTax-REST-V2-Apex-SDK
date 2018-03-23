global class ExportDocumentLineModel extends ErrorResult
    {
        /// <summary>
        /// The output format: CSV, XML, etc. If no preference, report will be in CSV format.
        /// </summary>
        global ReportFormat format { get; set; }

        /// <summary>
        /// The start date filter for report execution. If no date provided, same date of last month will be used as the startDate.
        /// </summary>
        global DateTime startDate { get; set; }

        /// <summary>
        /// The end date filter for report execution. If no date provided, today's date will be used as the endDate.
        /// </summary>
        global DateTime endDate { get; set; }

        /// <summary>
        /// The transactions in the country you wish to run a report:
        /// use "ALL" for all countries
        /// use "ALL Non-US" for all international countries
        /// or use a single 2-char ISO country code
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// The state associated with the transactions you wish to run a report on: use "ALL" for all states.
        /// </summary>
        global String state { get; set; }

        /// <summary>
        /// The type of date to filter your transactions
        /// </summary>
        global ReportDateFilter dateFilter { get; set; }

        /// <summary>
        /// The transaction type you want to run a report on
        /// </summary>
        global ReportDocType docType { get; set; }

        /// <summary>
        /// Format of dates in your rendered report. Example: "MM/dd/yyyy"
        /// </summary>
        global String dateFormat { get; set; }

        /// <summary>
        /// In which culture your report is produced with. Example: "en-US"
        /// </summary>
        global String culture { get; set; }

        /// <summary>
        /// The currency your report is displayed in. Example: "USD"
        /// </summary>
        global String currencyCode { get; set; }

}