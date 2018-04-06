/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Returns information about transactions that were locked

global class BulkLockTransactionResult
{

    /// Number of records that have been modified
    global Integer? numberOfRecords { get; set; }
}
