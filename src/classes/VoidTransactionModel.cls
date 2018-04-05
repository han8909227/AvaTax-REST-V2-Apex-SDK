global class VoidTransactionModel extends ErrorResult
    {
        /// <summary>
        /// Please specify the reason for voiding or cancelling this transaction
        /// </summary>
        global VoidReasonCode code { get; set; }
}