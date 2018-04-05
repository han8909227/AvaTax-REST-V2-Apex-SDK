global class VerifyTransactionModel extends ErrorResult
    {
        /// <summary>
        /// Transaction Date - The date on the invoice, purchase order, etc.
        ///  
        /// This is used to verify data consistency with the client application.
        /// </summary>
        global DateTime verifyTransactionDate { get; set; }

        /// <summary>
        /// Total Amount - The total amount (not including tax) for the document.
        ///  
        /// This is used to verify data consistency with the client application.
        /// </summary>
        global Decimal verifyTotalAmount { get; set; }

        /// <summary>
        /// Total Tax - The total tax for the document.
        ///  
        /// This is used to verify data consistency with the client application.
        /// </summary>
        global Decimal verifyTotalTax { get; set; }

}