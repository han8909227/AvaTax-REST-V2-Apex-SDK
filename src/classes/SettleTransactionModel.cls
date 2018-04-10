/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Settle this transaction with your ledger by executing one or many actions against that transaction. 
    // 
    // You may use this endpoint to verify the transaction, change the transaction's code, and commit the transaction for reporting purposes.
    // This endpoint may be used to execute any or all of these actions at once. */

global class SettleTransactionModel extends ErrorResult
{

    // To verify this transaction, you may provide information in this field.
    // 
    // If you leave this field null, the transaction will not be verified.
    global VerifyTransactionModel verify { get; set; }

    // To change the code for this transaction, you may provide information in this field.
    // 
    // If you leave this field null, the transaction's code will not be changed.
    global ChangeTransactionCodeModel changeCode { get; set; }

    // To commit this transaction so that it can be reported on a tax filing, you may provide information in this field.
    // 
    // If you leave this field null, the transaction's commit status will not be changed.
    // 
    // If you use Avalara's Managed Returns Service, committing a transaction will allow that transaction to be filed.
    global CommitTransactionModel commit { get; set; }
}
