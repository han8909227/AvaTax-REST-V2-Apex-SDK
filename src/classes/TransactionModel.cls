global class TransactionModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this transaction.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// A unique customer-provided code identifying this transaction.
        /// </summary>
        global String code { get; set; }

        /// <summary>
        /// The unique ID number of the company that recorded this transaction.
        /// </summary>
        global Long companyId { get; set; }

        /// <summary>
        /// The date on which this transaction occurred.
        /// </summary>
        global DateTime transactionDate { get; set; }

        /// <summary>
        /// The date when payment was made on this transaction. By default, this should be the same as the date of the transaction.
        /// </summary>
        global DateTime paymentDate { get; set; }

        /// <summary>
        /// The status of the transaction.
        /// </summary>
        global DocumentStatus status { get; set; }

        /// <summary>
        /// The type of the transaction. For Returns customers, a transaction type of "Invoice" will be reported to the tax authorities.
        /// A sales transaction represents a sale from the company to a customer. A purchase transaction represents a purchase made by the company.
        /// A return transaction represents a customer who decided to request a refund after purchasing a product from the company. An inventory 
        /// transfer transaction represents goods that were moved from one location of the company to another location without changing ownership.
        /// </summary>
        global DocumentType type { get; set; }

        /// <summary>
        /// If this transaction was created as part of a batch, this code indicates which batch.
        /// </summary>
        global String batchCode { get; set; }

        /// <summary>
        /// The three-character ISO 4217 currency code that was used for payment for this transaction.
        /// </summary>
        global String currencyCode { get; set; }

        /// <summary>
        /// The customer usage type for this transaction. Customer usage types often affect exemption or taxability rules.
        /// </summary>
        global String customerUsageType { get; set; }

        /// <summary>
        /// CustomerVendorCode
        /// </summary>
        global String customerVendorCode { get; set; }

        /// <summary>
        /// If this transaction was exempt, this field will contain the word "Exempt".
        /// </summary>
        global String exemptNo { get; set; }

        /// <summary>
        /// If this transaction has been reconciled against the company's ledger, this value is set to true.
        /// </summary>
        global Boolean reconciled { get; set; }

        /// <summary>
        /// (DEPRECATED) This field has been replaced by the reportingLocationCode field
        /// In order to ensure consistency of field names, Please use reportingLocationCode instead.
        /// </summary>
        global String locationCode { get; set; }

        /// <summary>
        /// If this transaction was made from a specific reporting location, this is the code string of the location.
        /// For customers using Returns, this indicates how tax will be reported according to different locations on the tax forms.
        /// In another words, this code does not affect the address of a transaction, it instead affects which tax return it will be reported on.
        /// Both locationCode and reportingLocationCode refer to LocationCode in Document table, if both are set, reportingLocationCode wins
        /// </summary>
        global String reportingLocationCode { get; set; }

        /// <summary>
        /// The customer-supplied purchase order number of this transaction.
        /// </summary>
        global String purchaseOrderNo { get; set; }

        /// <summary>
        /// A user-defined reference code for this transaction.
        /// </summary>
        global String referenceCode { get; set; }

        /// <summary>
        /// The salesperson who provided this transaction. Not required.
        /// </summary>
        global String salespersonCode { get; set; }

        /// <summary>
        /// If a tax override was applied to this transaction, indicates what type of tax override was applied.
        /// </summary>
        global TaxOverrideTypeId taxOverrideType { get; set; }

        /// <summary>
        /// If a tax override was applied to this transaction, indicates the amount of tax that was requested by the customer.
        /// </summary>
        global Decimal taxOverrideAmount { get; set; }

        /// <summary>
        /// If a tax override was applied to this transaction, indicates the reason for the tax override.
        /// </summary>
        global String taxOverrideReason { get; set; }

        /// <summary>
        /// The total amount of this transaction.
        /// </summary>
        global Decimal totalAmount { get; set; }

        /// <summary>
        /// The amount of this transaction that was exempt.
        /// </summary>
        global Decimal totalExempt { get; set; }

        /// <summary>
        /// The total tax calculated for all lines in this transaction.
        /// </summary>
        global Decimal totalTax { get; set; }

        /// <summary>
        /// The portion of the total amount of this transaction that was taxable.
        /// </summary>
        global Decimal totalTaxable { get; set; }

        /// <summary>
        /// If a tax override was applied to this transaction, indicates the amount of tax Avalara calculated for the transaction.
        /// </summary>
        global Decimal totalTaxCalculated { get; set; }

        /// <summary>
        /// If this transaction was adjusted, indicates the unique ID number of the reason why the transaction was adjusted.
        /// </summary>
        global AdjustmentReason adjustmentReason { get; set; }

        /// <summary>
        /// If this transaction was adjusted, indicates a description of the reason why the transaction was adjusted.
        /// </summary>
        global String adjustmentDescription { get; set; }

        /// <summary>
        /// If this transaction has been reported to a tax authority, this transaction is considered locked and may not be adjusted after reporting.
        /// </summary>
        global Boolean locked { get; set; }

        /// <summary>
        /// The two-or-three character ISO region code of the region for this transaction.
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// The two-character ISO 3166 code of the country for this transaction.
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// If this transaction was adjusted, this indicates the version number of this transaction. Incremented each time the transaction
        /// is adjusted.
        /// </summary>
        global Long version { get; set; }

        /// <summary>
        /// The software version used to calculate this transaction.
        /// </summary>
        global String softwareVersion { get; set; }

        /// <summary>
        /// The unique ID number of the origin address for this transaction.
        /// </summary>
        global Long originAddressId { get; set; }

        /// <summary>
        /// The unique ID number of the destination address for this transaction.
        /// </summary>
        global Long destinationAddressId { get; set; }

        /// <summary>
        /// If this transaction included foreign currency exchange, this is the date as of which the exchange rate was calculated.
        /// </summary>
        global DateTime exchangeRateEffectiveDate { get; set; }

        /// <summary>
        /// If this transaction included foreign currency exchange, this is the exchange rate that was used.
        /// </summary>
        global Decimal exchangeRate { get; set; }

        /// <summary>
        /// If true, this seller was considered the importer of record of a product shipped internationally.
        /// </summary>
        global Boolean isSellerImporterOfRecord { get; set; }

        /// <summary>
        /// Description of this transaction. Field permits unicode values.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// Email address associated with this transaction.
        /// </summary>
        global String email { get; set; }

        /// <summary>
        /// VAT business identification number used for this transaction.
        /// </summary>
        global String businessIdentificationNo { get; set; }

        /// <summary>
        /// The date/time when this record was last modified.
        /// </summary>
        global DateTime modifiedDate { get; set; }

        /// <summary>
        /// The user ID of the user who last modified this record.
        /// </summary>
        global Long modifiedUserId { get; set; }

        /// <summary>
        /// Tax date for this transaction
        /// </summary>
        global DateTime taxDate { get; set; }

        /// <summary>
        /// Optional: A list of line items in this transaction. To fetch this list, add the query string "?$include=Lines" or "?$include=Details" to your URL.
        /// </summary>
        global List<TransactionLineModel> lines { get; set; }

        /// <summary>
        /// Optional: A list of line items in this transaction. To fetch this list, add the query string "?$include=Addresses" to your URL.
        /// </summary>
        global List<TransactionAddressModel> addresses { get; set; }

        /// <summary>
        /// Optional: A list of location types in this transaction. To fetch this list, add the query string "?$include=Addresses" to your URL.
        /// </summary>
        global List<TransactionLocationTypeModel> locationTypes { get; set; }

        /// <summary>
        /// If this transaction has been adjusted, this list contains all the previous versions of the document.
        /// </summary>
        global List<TransactionModel> history { get; set; }

        /// <summary>
        /// Contains a summary of tax on this transaction.
        /// </summary>
        global List<TransactionSummary> summary { get; set; }

        /// <summary>
        /// Contains a list of extra parameters that were set when the transaction was created.
        /// </summary>
        global Map<string, string> parameters { get; set; }

        /// <summary>
        /// List of informational and warning messages regarding this API call. These messages are only relevant to the current API call.
        /// </summary>
        global List<AvaTaxMessage> messages { get; set; }
}