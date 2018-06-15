/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Commit this transaction as permanent so that it can be reported on a tax filing. */

global class CommitTransactionModel extends ErrorResult
{

    // Set this value to be `true` to commit this transaction.
    // 
    // Committing a transaction allows it to be reported on a tax filing. Uncommitted transactions will not be reported.
    global Boolean commitField { get; set; }
}
