/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents a batch of uploaded documents.

global class BatchModel extends ErrorResult
{

    /// The unique ID number of this batch.
    global Integer? id { get; set; }

    /// The user-friendly readable name for this batch.
    global String name { get; set; }

    /// The Account ID number of the account that owns this batch.
    global Integer? accountId { get; set; }

    /// The Company ID number of the company that owns this batch.
    global Integer? companyId { get; set; }

    /// The type of this batch.
    global BatchType type { get; set; }

    /// This batch's current processing status
    global BatchStatus? status { get; set; }

    /// Any optional flags provided for this batch
    global String options { get; set; }

    /// The agent used to create this batch
    global String batchAgent { get; set; }

    /// The date/time when this batch started processing
    global DateTime? startedDate { get; set; }

    /// The number of records in this batch; determined by the server
    global Integer? recordCount { get; set; }

    /// The current record being processed
    global Integer? currentRecord { get; set; }

    /// The date/time when this batch was completely processed
    global DateTime? completedDate { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// The list of files contained in this batch.
    global List<BatchFileModel> files { get; set; }
}
