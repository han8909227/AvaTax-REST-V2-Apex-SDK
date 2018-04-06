/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Refund a committed transaction

global class RefundTransactionModel extends ErrorResult
{

    /// The transaction code for the refund. This code will be saved to the `ReturnInvoice` transaction, and does not need to match the code of the original sale.
    global String refundTransactionCode { get; set; }

    /// The date of the refund. For customers using Avalara's Managed Returns Service, this date controls the month in which the refund
    /// transaction will be reported on a tax filing.
    global DateTime refundDate { get; set; }

    /// Type of this refund. 
    /// 
    /// To submit a full refund, specify `Full`. 
    /// 
    /// To refund only specific lines from the transaction, specify `Partial` and indicate the lines you wish to apply in the `refundLines` field.
    /// 
    /// To refund the tax that was paid in the previous transaction, specify `TaxOnly`.
    /// 
    /// To issue a percentage-based discount, specify `Percentage`.
    global RefundType? refundType { get; set; }

    /// The percentage for refund.
    /// 
    /// This value only applies if you choose `refundType = Percentage` or `refundType = Partial`.
    global Decimal? refundPercentage { get; set; }

    /// If you chose a refund of type `Partial`, this indicates which lines from the original transaction are being refunded.
    global List<String> refundLines { get; set; }

    /// A user-defined reference field containing information about this refund.
    global String referenceCode { get; set; }
}
