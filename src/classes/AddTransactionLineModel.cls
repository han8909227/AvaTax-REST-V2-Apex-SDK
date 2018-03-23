global class AddTransactionLineModel extends ErrorResult
{
    /// company code
    global String companyCode { get; set; }

    /// document code for the transaction to add lines
    global String transactionCode { get; set; }

    /// document type
    global DocumentType documentType { get; set; }

    /// List of lines to be added
    global List<LineItemModel> lines { get; set; }

    /// Option to renumber lines after add. After renumber, the line number becomes: "1", "2", "3", ...
    global Boolean renumber { get; set; }
}