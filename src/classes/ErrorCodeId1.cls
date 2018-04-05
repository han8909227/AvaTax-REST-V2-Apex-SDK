global enum ErrorCodeId1
{
    /// Server has a configuration or setup problem
    ServerConfiguration,

    /// User doesn't have rights to this account or company
    /// </summary>
    AccountInvalidException,

    CompanyInvalidException,

    /// Use this error message when the user is trying to fetch a single object and the object either does not exist or cannot be seen by the current user.
    EntityNotFoundError,

    ValueRequiredError,

    RangeError,

    RangeCompareError,

    RangeSetError,

    TaxpayerNumberRequired,

    CommonPassword,

    WeakPassword,

    StringLengthError,

    EmailValidationError,

    EmailMissingError,

    ParserFieldNameError,

    ParserFieldValueError,

    ParserSyntaxError,

    ParserTooManyParametersError,

    ParserUnterminatedValueError,

    DeleteUserSelfError,

    OldPasswordInvalid,

    CannotChangePassword,

    CannotChangeCompanyCode,

    DateFormatError,

    NoDefaultCompany,

    AuthenticationException,

    AuthorizationException,

    ValidationException,

    InactiveUserError,

    AuthenticationIncomplete,

    BasicAuthIncorrect,

    IdentityServerError,

    BearerTokenInvalid,

    ModelRequiredException,

    AccountExpiredException,

    VisibilityError,

    BearerTokenNotSupported,

    InvalidSecurityRole,

    InvalidRegistrarAction,

    RemoteServerError,

    NoFilterCriteriaException,

    OpenClauseException,

    JsonFormatError,

    UnhandledException,

    ReportingCompanyMustHaveContactsError,

    CompanyProfileNotSet,

    CannotAssignUserToCompany,

    MustAssignUserToCompany,

    ModelStateInvalid,

    DateRangeError,

    InvalidDateRangeError,

    DeleteInformation,

    CannotCreateDeletedObjects,

    CannotModifyDeletedObjects,

    ReturnNameNotFound,

    InvalidAddressTypeAndCategory,

    DefaultCompanyLocation,

    InvalidCountry,

    InvalidCountryRegion,

    BrazilValidationError,

    BrazilExemptValidationError,

    BrazilPisCofinsError,

    JurisdictionNotFoundError,

    MedicalExciseError,

    RateDependsTaxabilityError,

    RateDependsEuropeError,

    InvalidRateTypeCode,

    RateTypeNotSupported,

    CannotUpdateNestedObjects,

    UPCCodeInvalidChars,

    UPCCodeInvalidLength,

    IncorrectPathError,

    InvalidJurisdictionType,

    MustConfirmResetLicenseKey,

    DuplicateCompanyCode,

    TINFormatError,

    DuplicateNexusError,

    UnknownNexusError,

    ParentNexusNotFound,

    InvalidTaxCodeType,

    CannotActivateCompany,

    DuplicateEntityProperty,

    ReportingEntityError,

    InvalidReturnOperationError,

    CannotDeleteCompany,

    CountryOverridesNotAvailable,

    JurisdictionOverrideMismatch,

    DuplicateSystemTaxCode,

    SSTOverridesNotAvailable,

    NexusDateMismatch,

    TechSupportAuditRequired,

    NexusParentDateMismatch,

    BearerTokenParseUserIdError,

    RetrieveUserError,

    InvalidConfigurationSetting,

    InvalidConfigurationValue,
    
    InvalidEnumValue,

    TaxCodeAssociatedTaxRule,

    CannotSwitchAccountId,

    RequestIncomplete
    
}