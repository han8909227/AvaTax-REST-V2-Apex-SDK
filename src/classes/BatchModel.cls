public class BatchModel extends ErrorResult
{
    /// The unique ID number of this batch.
    public Long id { get; set; }

    /// The user-friendly readable name for this batch.
    public String name { get; set; }

    /// The Account ID number of the account that owns this batch.
    public Long accountId { get; set; }

    /// The Company ID number of the company that owns this batch.
    public Long companyId { get; set; }

    /// The type of this batch.
    public BatchType type { get; set; }

    /// This batch's current processing status
    public BatchStatus status { get; set; }

    /// Any optional flags provided for this batch
    public String options { get; set; }

    /// The agent used to create this batch
    public String batchAgent { get; set; }

    /// The date/time when this batch started processing
    public DateTime startedDate { get; set; }

    /// The number of records in this batch; determined by the server
    public Long recordCount { get; set; }

    /// The current record being processed
    public Long currentRecord { get; set; }

    /// The date/time when this batch was completely processed
    public DateTime completedDate { get; set; }

    /// The date when this record was created.
    public DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    public Long createdUserId { get; set; }

    /// The date/time when this record was last modified.
    public DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    public Long modifiedUserId { get; set; }

    /// The list of files contained in this batch.
    public List<BatchFileModel> files { get; set; }
}