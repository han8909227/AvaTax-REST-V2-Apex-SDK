/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Verify this transaction by matching it to values in your accounting system.
    /// 
    /// You may specify one or more of the following fields to verify: `date`, `totalAmount`, or `totalTax`.
    /// This call will report an error if there is any difference between the data stored in AvaTax and
    /// the data stored in your accounting system. */

global class VerifyTransactionModel extends ErrorResult
{

    /// Set this value if you wish to verify a match between `verifyTransactionDate` and
    /// the `documentDate` value on the transaction recorded in AvaTax.
    /// 
    /// If you leave this field empty, we will skip verification for this field.
    global DateTime? verifyTransactionDate { get; set; }

    /// Set this value if you wish to verify a match between `verifyTotalAmount` and
    /// the `totalAmount` value on the transaction recorded in AvaTax.
    /// 
    /// If you leave this field empty, we will skip verification for this field.
    global Decimal? verifyTotalAmount { get; set; }

    /// Set this value if you wish to verify a match between `verifyTotalTax` and
    /// the `totalTax` value on the transaction recorded in AvaTax.
    /// 
    /// If you leave this field empty, we will skip verification for this field.
    global Decimal? verifyTotalTax { get; set; }
}
