global class RefundTransactionModel extends ErrorResult
    {
        /// <summary>
        /// the transaction code for this refund
        /// </summary>
        global String refundTransactionCode { get; set; }

        /// <summary>
        /// The date of the refund. If null, today's date will be used
        /// </summary>
        global DateTime refundDate { get; set; }

        /// <summary>
        /// Type of this refund
        /// </summary>
        global RefundType refundType { get; set; }

        /// <summary>
        /// Percentage for refund
        /// </summary>
        global Decimal refundPercentage { get; set; }

        /// <summary>
        /// Process refund for these lines
        /// </summary>
        global List<String> refundLines { get; set; }

        /// <summary>
        /// Reference code for this refund
        /// </summary>
        global String referenceCode { get; set; }

}