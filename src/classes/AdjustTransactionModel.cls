global class AdjustTransactionModel extends ErrorResult
{
    /// <summary>
    /// A reason code indicating why this adjustment was made
    /// </summary>
    global AdjustmentReason adjustmentReason { get; set; }

    /// <summary>
    /// If the AdjustmentReason is "Other", specify the reason here.
    /// 
    /// This is required when the AdjustmentReason is 8 (Other).
    /// </summary>
    global String adjustmentDescription { get; set; }

    /// <summary>
    /// Replace the current transaction with tax data calculated for this new transaction
    /// </summary>
    global CreateTransactionModel newTransaction { get; set; }
}