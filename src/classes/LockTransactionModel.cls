/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Commit this transaction as permanent */

global class LockTransactionModel extends ErrorResult
{

    /// Set this value to be true to commit this transaction.
    // Committing a transaction allows it to be reported on a tax return. Uncommitted transactions will not be reported.
    global Boolean isLocked { get; set; }
}
