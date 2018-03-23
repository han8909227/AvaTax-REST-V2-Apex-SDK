global class RemoveTransactionLineModel extends ErrorResult
    {
        /// <summary>
        /// company code
        /// </summary>
        global String companyCode { get; set; }

        /// <summary>
        /// document code for the transaction to add lines
        /// </summary>
        global String transactionCode { get; set; }

        /// <summary>
        /// document type
        /// </summary>
        global DocumentType documentType { get; set; }

        /// <summary>
        /// List of lines to be added
        /// </summary>
        global List<String> lines { get; set; }

        /// <summary>
        /// ption to renumber lines after removal. After renumber, the line number becomes: "1", "2", "3", ...
        /// </summary>
        global Boolean renumber { get; set; }
}