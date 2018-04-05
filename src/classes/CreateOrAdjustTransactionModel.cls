global class CreateOrAdjustTransactionModel extends ErrorResult
    {
        /// <summary>
        /// The create transaction model to be created or updated. 
        ///  
        /// If the transaction does not exist, create transaction.
        /// If the transaction exists, adjust the existing transaction.
        /// </summary>
        global CreateTransactionModel createTransactionModel { get; set; }

}