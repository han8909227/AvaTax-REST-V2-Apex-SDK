global enum PaymentType
{
    /// The payment is for the current payment
    CurrentPeriod,

    /// The payment is a prepayment
    Prepayment,

    /// The payment is a prior payment
    PriorPayment,

    /// The payment is a prior CSP fee
    PriorCspFee

}