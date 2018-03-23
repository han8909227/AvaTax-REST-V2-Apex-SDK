public enum ApiCallStatus
{
    /// If the original api call is availabe on S3
    OriginalApiCallAvailable,

    /// if the original api call is not available, reconstructed api call should always be available
    ReconstructedApiCallAvailable,

    /// Any other api call status
    AnyOtherApi

}