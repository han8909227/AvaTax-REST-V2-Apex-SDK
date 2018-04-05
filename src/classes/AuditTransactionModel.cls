global class AuditTransactionModel extends ErrorResult
{
    /// <summary>
    /// Unique ID number of the company that created this transaction
    /// </summary>
    global Long companyId { get; set; }

    /// <summary>
    /// Server timestamp, in UTC, of the date/time when the original transaction was created
    /// </summary>
    global DateTime serverTimestamp { get; set; }

    /// <summary>
    /// Length of time the original API call took
    /// </summary>
    global DateTime serverDuration { get; set; }

    /// <summary>
    /// api call status
    /// </summary>
    global ApiCallStatus apiCallStatus { get; set; }

    /// <summary>
    /// Original API request/response
    /// </summary>
    global OriginalApiRequestResponseModel original { get; set; }

    /// <summary>
    /// Reconstructed API request/response
    /// </summary>
    global ReconstructedApiRequestResponseModel reconstructed { get; set; }

}