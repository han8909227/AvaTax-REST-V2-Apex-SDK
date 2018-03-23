global enum VoidReasonCode
{
    /// Unspecified reason
    Unspecified,

    /// Post operation failed - Document status will be changed to unposted
    PostFailed,

    /// Document deleted - If committed, document status will be changed to Cancelled. If not committed, document will be
    ///  deleted.
    DocDeleted,

    /// Document has been voided and DocStatus will be set to Cancelled
    DocVoided,

    /// AdjustTax operation has been cancelled. Adjustment will be reversed.
    AdjustmentCancelled

}