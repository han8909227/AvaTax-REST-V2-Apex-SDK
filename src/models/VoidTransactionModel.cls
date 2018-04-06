/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// A request to void a previously created transaction

global class VoidTransactionModel extends ErrorResult
{

    /// Please specify the reason for voiding or cancelling this transaction
    global VoidReasonCode code { get; set; }
}
