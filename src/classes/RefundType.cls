/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Refund types */

global enum RefundType
{
    // Refund the whole transaction.
    Full,

    // Refund only specific lines from the original a transaction.
    Partial,

    // Only refund the tax part of the transaction.
    TaxOnly,

    // Refund a percentage of the value of this transaction.
    Percentage

}
