global enum RefundType
{
    /// Refund the whole transaction.
    Full,

    /// Refund only specific lines from the original a transaction.
    Partial,

    /// Only refund the tax part of the transaction.
    TaxOnly,

    /// Refund a percentage of the value of this transaction.
    Percentage

}