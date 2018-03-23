global enum AdjustmentReason
{
    /// The transaction has not been adjusted
    NotAdjusted,

    /// A sourcing issue existed which caused the transaction to be adjusted
    SourcingIssue,

    /// Transaction was adjusted to reconcile it with a general ledger
    ReconciledWithGeneralLedger,

    /// Transaction was adjusted after an exemption certificate was applied
    ExemptCertApplied,

    /// Transaction was adjusted when the price of an item changed
    PriceAdjusted,

    /// Transaction was adjusted due to a product return
    ProductReturned,

    /// Transaction was adjusted due to a product exchange
    ProductExchanged,

    /// Transaction was adjusted due to bad or uncollectable debt
    BadDebt,

    /// Transaction was adjusted for another reason not specified
    Other,

    /// Offline
    Offline

}