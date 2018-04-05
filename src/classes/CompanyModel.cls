global virtual class CompanyModel extends ErrorResult
{
    /// The unique ID number of this company.
    global Long id { get; set; }

    /// The unique ID number of the account this company belongs to.
    global Long accountId { get; set; }

    /// If this company is fully owned by another company, this is the unique identity of the parent company.
    global Long parentCompanyId { get; set; }

    /// If this company files Streamlined Sales Tax, this is the PID of this company as defined by the Streamlined Sales Tax governing board.
    global String sstPid { get; set; }

    /// A unique code that references this company within your account.
    global String companyCode { get; set; }

    /// The name of this company, as shown to customers.
    global String name { get; set; }

    /// This flag is true if this company is the default company for this account. Only one company may be set as the default.
    global Boolean isDefault { get; set; }

    /// If set, this is the unique ID number of the default location for this company.
    global Long defaultLocationId { get; set; }

    /// This flag indicates whether tax activity can occur for this company. Set this flag to true to permit the company to process transactions.
    global Boolean isActive { get; set; }

    /* For United States companies, this field contains your Taxpayer Identification Number. 
     * This is a nine digit number that is usually called an EIN for an Employer Identification Number if this company is a corporation, 
     * or SSN for a Social Security Number if this company is a person.
     * This value is required if you subscribe to Avalara Managed Returns or the SST Certified Service Provider services, 
     * but it is optional if you do not subscribe to either of those services.*/
    global String taxpayerIdNumber { get; set; }

    /* Set this flag to true to give this company its own unique tax profile.
     * If this flag is true, this company will have its own Nexus, TaxRule, TaxCode, and Item definitions.
     * If this flag is false, this company will inherit all profile values from its parent.*/
    global Boolean hasProfile { get; set; }

    /* Set this flag to true if this company must file its own tax returns.
     * For users who have Returns enabled, this flag turns on monthly Worksheet generation for the company. */
    global Boolean isReportingEntity { get; set; }

    /// If this company participates in Streamlined Sales Tax, this is the date when the company joined the SST program.
    global DateTime sstEffectiveDate { get; set; }

    /// The two character ISO-3166 country code of the default country for this company.
    global String defaultCountry { get; set; }

    /// This is the three character ISO-4217 currency code of the default currency used by this company.
    global String baseCurrencyCode { get; set; }

    /// Indicates whether this company prefers to round amounts at the document level or line level.
    global RoundingLevelId roundingLevelId { get; set; }

    /// Set this value to true to receive warnings in API calls via SOAP.
    global Boolean warningsEnabled { get; set; }

    /* Set this flag to true to indicate that this company is a test company.
     * If you have Returns enabled, Test companies will not file tax returns and can be used for validation purposes.*/
    global Boolean isTest { get; set; }

    /// Used to apply tax detail dependency at a jurisdiction level.
    global TaxDependencyLevelId taxDependencyLevelId { get; set; }

    /* Set this value to true to indicate that you are still working to finish configuring this company.
     * While this value is true, no tax reporting will occur and the company will not be usable for transactions.*/
    global Boolean inProgress { get; set; }

    /// Business Identification No
    global String businessIdentificationNo { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Long createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Long modifiedUserId { get; set; }

    /// Optional: A list of contacts defined for this company. To fetch this list, add the query string "?$include=Contacts" to your URL.
    global List<ContactModel> contacts { get; set; }

    /// Optional: A list of items defined for this company. To fetch this list, add the query string "?$include=Items" to your URL.
    global List<ItemModel> items { get; set; }

    /// Optional: A list of locations defined for this company. To fetch this list, add the query string "?$include=Locations" to your URL.
    global List<LocationModel> locations { get; set; }

    /// Optional: A list of nexus defined for this company. To fetch this list, add the query string "?$include=Nexus" to your URL.
    global List<NexusModel> nexus { get; set; }

    /// Optional: A list of settings defined for this company. To fetch this list, add the query string "?$include=Settings" to your URL.
    global List<SettingModel> settings { get; set; }

    /// Optional: A list of tax codes defined for this company. To fetch this list, add the query string "?$include=TaxCodes" to your URL.
    global List<TaxCodeModel> taxCodes { get; set; }

    /// Optional: A list of tax rules defined for this company. To fetch this list, add the query string "?$include=TaxRules" to your URL.
    global List<TaxRuleModel> taxRules { get; set; }

    /// Optional: A list of UPCs defined for this company. To fetch this list, add the query string "?$include=UPCs" to your URL.
    global List<UPCModel> upcs { get; set; }

    /// DEPRECATED - Please use the `ListCertificates` API.
    global List<EcmsModel> exemptCerts { get; set; }
}