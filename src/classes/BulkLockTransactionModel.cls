/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Bulk lock documents model */

global class BulkLockTransactionModel extends ErrorResult
{

    // List of documents to lock
    global Integer documentIds { get; set; }

    // The lock status to set for the documents designated in this API
    global Boolean isLocked { get; set; }
}
