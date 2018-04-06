/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// This object represents a single transaction; for example, a sales invoice or purchase order.

global class TransactionModel extends ErrorResult
{

    /// The unique ID number of this transaction.
    global Int64? id { get; set; }

    /// A unique customer-provided code identifying this transaction.
    global String code { get; set; }

    /// The unique ID number of the company that recorded this transaction.
    global Integer? companyId { get; set; }

    /// The date on which this transaction occurred.
    global DateTime? date { get; set; }

    /// The date when payment was made on this transaction. By default, this should be the same as the date of the transaction.
    global DateTime? paymentDate { get; set; }

    /// The status of the transaction.
    global DocumentStatus? status { get; set; }

    /// The type of the transaction. 
    /// 
    /// Transactions of type `SalesOrder`, `ReturnOrder`, and so on are temporary estimates and will not be saved.
    /// 
    /// Transactions of type `SalesInvoice, `ReturnInvoice`, and so on are permanent transactions that can be reported to tax authorities
    /// if they are in status `Committed`.
    /// 
    /// A sales transaction represents a sale from the company to a customer. A purchase transaction represents a purchase made by the company.
    /// A return transaction represents a customer who decided to request a refund after purchasing a product from the company. An inventory 
    /// transfer transaction represents goods that were moved from one location of the company to another location without changing ownership.
    global DocumentType? type { get; set; }

    /// If this transaction was created as part of a batch, this code indicates which batch.
    global String batchCode { get; set; }

    /// The three-character ISO 4217 currency code that was used for payment for this transaction.
    global String currencyCode { get; set; }

    /// DEPRECATED - The customer usage type for this transaction. Customer usage types often affect exemption or taxability rules.
    /// Please use entityUseCode instead.
    global String customerUsageType { get; set; }

    /// The entity use code for this transaction. Entity use codes often affect exemption or taxability rules.
    global String entityUseCode { get; set; }

    /// DEPRECATED - Please use `customerCode`.
    /// 
    /// This field has been renamed to `customerCode` to match documentation for other APIs related to exemption customers.
    global String customerVendorCode { get; set; }

    /// Unique code identifying the customer that requested this transaction. 
    /// 
    /// When you specify a `customerCode`, AvaTax will look to see if a customer exists with this code in the exemption certificate system.
    /// If that customer exists, and if that customer has uploaded an exemption certificate that applies to this transaction, the relevant
    /// parts of this transaction that can use the exemption certificate will be treated as exempt.
    global String customerCode { get; set; }

    /// If this transaction was exempt, this field will contain the word "Exempt".
    global String exemptNo { get; set; }

    /// If this transaction has been reconciled against the company's ledger, this value is set to true.
    global Boolean? reconciled { get; set; }

    /// (DEPRECATED) This field has been replaced by the reportingLocationCode field
    /// In order to ensure consistency of field names, Please use reportingLocationCode instead.
    global String locationCode { get; set; }

    /// For customers who use [location-based tax reporting](https://developer.avalara.com/avatax/dev-guide/locations/location-based-reporting), 
    /// this field controls how this transaction will be filed for multi-location tax filings.
    /// 
    /// If you specify a non-null value for this field, AvaTax will ensure that this transaction is reported on the tax return associated 
    /// with the [LocationModel](https://developer.avalara.com/api-reference/avatax/rest/v2/models/LocationModel/) identified by this code.
    /// 
    /// This field does not affect any addresses for the transaction. It only controls the tax filing behavior of this transaction.
    /// 
    /// If you are looking for information about how to set up addresses for a transaction, please see [Using Address Types](https://developer.avalara.com/avatax/dev-guide/customizing-transaction/address-types/) 
    /// in the AvaTax Developer Guide.
    global String reportingLocationCode { get; set; }

    /// The customer-supplied purchase order number of this transaction.
    global String purchaseOrderNo { get; set; }

    /// A user-defined reference code for this transaction.
    global String referenceCode { get; set; }

    /// The salesperson who provided this transaction. Not required.
    global String salespersonCode { get; set; }

    /// If a tax override was applied to this transaction, indicates what type of tax override was applied.
    global TaxOverrideTypeId? taxOverrideType { get; set; }

    /// If a tax override was applied to this transaction, indicates the amount of tax that was requested by the customer.
    global Decimal? taxOverrideAmount { get; set; }

    /// If a tax override was applied to this transaction, indicates the reason for the tax override.
    global String taxOverrideReason { get; set; }

    /// The total amount of this transaction.
    global Decimal? totalAmount { get; set; }

    /// The amount of this transaction that was exempt.
    global Decimal? totalExempt { get; set; }

    /// The total amount of discounts applied to all lines within this transaction.
    global Decimal? totalDiscount { get; set; }

    /// The total tax calculated for all lines in this transaction.
    global Decimal? totalTax { get; set; }

    /// The portion of the total amount of this transaction that was taxable.
    global Decimal? totalTaxable { get; set; }

    /// If a tax override was applied to this transaction, indicates the amount of tax Avalara calculated for the transaction.
    global Decimal? totalTaxCalculated { get; set; }

    /// If this transaction was adjusted, indicates the unique ID number of the reason why the transaction was adjusted.
    global AdjustmentReason? adjustmentReason { get; set; }

    /// If this transaction was adjusted, indicates a description of the reason why the transaction was adjusted.
    global String adjustmentDescription { get; set; }

    /// If this transaction has been reported to a tax authority, this transaction is considered locked and may not be adjusted after reporting.
    global Boolean? locked { get; set; }

    /// The two-or-three character ISO region code of the region for this transaction.
    global String region { get; set; }

    /// The two-character ISO 3166 code of the country for this transaction.
    global String country { get; set; }

    /// If this transaction was adjusted, this indicates the version number of this transaction. Incremented each time the transaction
    /// is adjusted.
    global Integer? version { get; set; }

    /// The software version used to calculate this transaction.
    global String softwareVersion { get; set; }

    /// The unique ID number of the origin address for this transaction.
    global Int64? originAddressId { get; set; }

    /// The unique ID number of the destination address for this transaction.
    global Int64? destinationAddressId { get; set; }

    /// If this transaction included foreign currency exchange, this is the date as of which the exchange rate was calculated.
    global DateTime? exchangeRateEffectiveDate { get; set; }

    /// If this transaction included foreign currency exchange, this is the exchange rate that was used.
    global Decimal? exchangeRate { get; set; }

    /// By default, the value is null, when the value is null, the value can be set at nexus level and used.
    /// If the value is not null, it will override the value at nexus level.
    /// 
    /// If true, this seller was considered the importer of record of a product shipped internationally.
    /// 
    /// If this transaction is not an international transaction, this field may be left blank.
    /// 
    /// The "importer of record" is liable to pay customs and import duties for products shipped internationally. If 
    /// you specify that the seller is the importer of record, then estimates of customs and import duties will be added
    /// as tax details to the transaction. Otherwise, the buyer is considered the importer of record, and customs
    /// and import duties will not be added to the tax details for this transaction.
    global Boolean? isSellerImporterOfRecord { get; set; }

    /// Description of this transaction. Field permits unicode values.
    global String description { get; set; }

    /// Email address associated with this transaction.
    global String email { get; set; }

    /// VAT business identification number used for this transaction.
    global String businessIdentificationNo { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// Tax date for this transaction
    global DateTime? taxDate { get; set; }

    /// A list of line items in this transaction. To fetch this list, add the query string `?$include=Lines` or `?$include=Details` to your URL.
    global List<TransactionLineModel> lines { get; set; }

    /// A list of line items in this transaction. To fetch this list, add the query string `?$include=Addresses` to your URL.
    /// 
    /// For more information about transaction addresses, please see [Using Address Types](https://developer.avalara.com/avatax/dev-guide/customizing-transaction/address-types/) 
    /// in the AvaTax Developer Guide.
    global List<TransactionAddressModel> addresses { get; set; }

    /// A list of location types in this transaction. To fetch this list, add the query string `?$include=Addresses` to your URL.
    global List<TransactionLocationTypeModel> locationTypes { get; set; }

    /// Contains a summary of tax on this transaction.
    global List<TransactionSummary> summary { get; set; }

    /// Contains a list of extra parameters that were set when the transaction was created.
    global Dictionary<string, string> parameters { get; set; }

    /// List of informational and warning messages regarding this API call. These messages are only relevant to the current API call.
    global List<AvaTaxMessage> messages { get; set; }
}
