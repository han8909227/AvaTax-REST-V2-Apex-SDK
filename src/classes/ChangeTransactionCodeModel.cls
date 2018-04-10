/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Settle this transaction with your ledger by verifying its amounts.
    // If the transaction is not yet committed, you may specify the "commit" value to commit it to the ledger and allow it to be reported.
    // You may also optionally change the transaction's code by specifying the "newTransactionCode" value. */

global class ChangeTransactionCodeModel extends ErrorResult
{

    // To change the transaction code for this transaction, specify the new transaction code here.
    global String newCode { get; set; }
}
