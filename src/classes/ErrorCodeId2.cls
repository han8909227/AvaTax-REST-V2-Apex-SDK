global enum ErrorCodeId2
{
    AccountNotNew,

    PasswordLengthInvalid,

    LocalNexusConflict,

    InvalidEcmsOverrideCode,

    AccountDoesNotExist,

    InvalidTaxType,

    IncorrectFieldValue,

    LeadingOrTrailingException,

    NotEnoughAddressesInfo,

    ReportNotInitiated,

    FailedToBuildReport,

    ReportNotFinished,

    FailedToUploadReport,

    FailedToDownloadReport,

    /// Batch errors
    BatchSalesAuditMustBeZippedError,

    BatchZipMustContainOneFileError,

    BatchInvalidFileTypeError,

    BatchCannotSaveBatchFile,

    BatchCannotGetBatchFile,

    BatchCannotDeleteBatchFile,

    /// Point Of Sale API exceptions
    PointOfSaleFileSize,

    PointOfSaleSetup,

    InvalidInputDate,

    RequestedFileNotExist,

    /// Errors in Soap V1 Passthrough / GetTax calls
    GetTaxError,

    AddressConflictException,

    DocumentCodeConflict,

    MissingAddress,

    InvalidParameter,

    InvalidParameterValue,

    CompanyCodeConflict,

    DocumentFetchLimit,

    AddressIncomplete,

    AddressLocationNotFound,

    MissingLine,

    InvalidAddressTextCase,

    DocumentNotCommitted,

    MultiDocumentTypesError,

    InvalidDocumentTypesToFetch,

    TimeoutRequested,

    InvalidAddress,

    /// Represents a malformed document fetch command
    BadDocumentFetch,

    CannotChangeFilingStatus,

    /// Represents a SQL server timeout error / deadlock error
    ServerUnreachable,

    /// Partner API error codes
    SubscriptionRequired,

    AccountExists,

    InvitationOnly,
    
    FreeTrialNotAvailable,

    AccountExistsDifferentEmail,

    AvalaraIdentityApiError,

    InvalidIPAddress,

    /// Refund API error codes
    InvalidDocumentStatusForRefund,

    RefundTypeAndPercentageMismatch,

    InvalidDocumentTypeForRefund,

    RefundTypeAndLineMismatch,
    
    NullRefundPercentageAndLines,

    InvalidRefundType,

    RefundPercentageForTaxOnly,

    LineNoOutOfRange,

    RefundPercentageOutOfRange,

    /// Free API error codes
    TaxRateNotAvailableForFreeInThisCountry,

    /// Filing Calendar Error Codes
    FilingCalendarCannotBeDeleted,

    InvalidEffectiveDate,
    
    NonOutletForm,

    OverlappingFilingCalendar,

    /// Location error codes
    QuestionNotNeededForThisAddress,

    QuestionNotValidForThisAddress,
    
    /// Create or update transaction error codes
    CannotModifyLockedTransaction,

    LineAlreadyExists,

    LineDoesNotExist,

    LinesNotSpecified,

    InvalidBusinessType,

    CannotModifyExemptCert,
    
    CertCaptureFieldValidationError,

    CertCaptureError,

    MissingRequiredFields,

    CertCaptureNotConfiguredError,

    AddRelationshipsError,

    MissingExposureZone,

    ConflictingExposureZone,

    MissingFieldToCreateExposureZone,

    MissingExemptReason,

    InvalidExemptReason,

    InvalidCertCaptureOperation,

    ConflictingFields,

    InvalidPdfOrImageFile,

    InvalidCoverLetterTitle,

    /// Multi company error codes
    TransactionNotCancelled,

    TooManyTransactionLines,

    OnlyTaxDateOverrideIsAllowed,

    CommsConfigClientIdMissing,

    CommsConfigClientIdBadValue,

    /// BizTech API error codes
    BizTechCustomerAccountFailure,

    BizTechOpportunityCreationFailure,

    /// Account Activate error codes
    AccountInNewStatusException
}