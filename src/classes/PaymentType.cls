/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Indicates the type of payments */

global enum PaymentType
{

    /// The payment is for the current payment
    CurrentPeriod,

    /// The payment is a prepayment
    Prepayment,

    /// The payment is a prior payment
    PriorPayment,

    /// The payment is a prior CSP fee
    PriorCspFee,

}
