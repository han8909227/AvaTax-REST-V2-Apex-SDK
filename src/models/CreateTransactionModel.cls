/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Create a transaction

global class CreateTransactionModel extends ErrorResult
{

    /// The internal reference code used by the client application. This is used for operations such as
    /// Get, Adjust, Settle, and Void. If you leave the transaction code blank, a GUID will be assigned to each transaction.
    global String code { get; set; }

    /// A list of line items that will appear on this transaction.
    global List<LineItemModel> lines { get; set; }

    /// Specifies the type of document to create. A document type ending with `Invoice` is a permanent transaction
    /// that will be recorded in AvaTax. A document type ending with `Order` is a temporary estimate that will not
    /// be preserved.
    /// 
    /// If you omit this value, the API will assume you want to create a `SalesOrder`.
    global DocumentType? type { get; set; }

    /// Company Code - Specify the code of the company creating this transaction here. If you leave this value null,
    /// your account's default company will be used instead.
    global String companyCode { get; set; }

    /// Transaction Date - The date on the invoice, purchase order, etc.
    /// 
    /// By default, this date will be used to calculate the tax rates for the transaction. If you wish to use a
    /// different date to calculate tax rates, please specify a `taxOverride` of type `taxDate`.
    global DateTime date { get; set; }

    /// Salesperson Code - The client application salesperson reference code.
    global String salespersonCode { get; set; }

    /// Customer Code - The client application customer reference code.
    /// Note: This field is case sensitive. To have exemption certificates apply, this value should
    /// be the same as the one passed to create a customer.
    global String customerCode { get; set; }

    /// DEPRECATED - Customer Usage Type - The client application customer or usage type. For a list of 
    /// available usage types, see `/api/v2/definitions/entityusecodes`.
    /// Please use entityUseCode instead.
    global String customerUsageType { get; set; }

    /// Entity Use Code - The client application customer or usage type. For a list of 
    /// available usage types, see `/api/v2/definitions/entityusecodes`.
    global String entityUseCode { get; set; }

    /// Discount - The discount amount to apply to the document. This value will be applied only to lines
    /// that have the `discounted` flag set to true. If no lines have `discounted` set to true, this discount
    /// cannot be applied.
    global Decimal? discount { get; set; }

    /// Purchase Order Number for this document.
    /// 
    /// This is required for single use exemption certificates to match the order and invoice with the certificate.
    global String purchaseOrderNo { get; set; }

    /// Exemption Number for this document.
    /// 
    /// If you specify an exemption number for this document, this document will be considered exempt, and you
    /// may be asked to provide proof of this exemption certificate in the event that you are asked by an auditor
    /// to verify your exemptions.
    global String exemptionNo { get; set; }

    /// Default addresses for all lines in this document. 
    /// 
    /// These addresses are the default values that will be used for any lines that do not have their own
    /// address information. If you specify addresses for a line, then no default addresses will be loaded
    /// for that line.
    global AddressesModel addresses { get; set; }

    /// Special parameters for this transaction.
    /// 
    /// To get a full list of available parameters, please use the `/api/v2/definitions/parameters` endpoint.
    global Dictionary<string, string> parameters { get; set; }

    /// Customer-provided Reference Code with information about this transaction.
    /// 
    /// This field could be used to reference the original document for a return invoice, or for any other
    /// reference purpose.
    global String referenceCode { get; set; }

    /// Sets the sale location code (Outlet ID) for reporting this document to the tax authority.
    /// 
    /// This value is used by Avalara Managed Returns to group documents together by reporting locations
    /// for tax authorities that require location-based reporting.
    global String reportingLocationCode { get; set; }

    /// Causes the document to be committed if true. This option is only applicable for invoice document 
    /// types, not orders.
    global Boolean? commit { get; set; }

    /// BatchCode for batch operations.
    global String batchCode { get; set; }

    /// Specifies a tax override for the entire document
    global TaxOverrideModel taxOverride { get; set; }

    /// The three-character ISO 4217 currency code for this transaction.
    global String currencyCode { get; set; }

    /// Specifies whether the tax calculation is handled Local, Remote, or Automatic (default). This only 
    /// applies when using an AvaLocal server.
    global ServiceMode? serviceMode { get; set; }

    /// Currency exchange rate from this transaction to the company base currency.
    ///  
    /// This only needs to be set if the transaction currency is different than the company base currency.
    /// It defaults to 1.0.
    global Decimal? exchangeRate { get; set; }

    /// Effective date of the exchange rate.
    global DateTime? exchangeRateEffectiveDate { get; set; }

    /// Sets the Point of Sale Lane Code sent by the User for this document.
    global String posLaneCode { get; set; }

    /// VAT business identification number for the customer for this transaction. This number will be used for all lines 
    /// in the transaction, except for those lines where you have defined a different business identification number.
    /// 
    /// If you specify a VAT business identification number for the customer in this transaction and you have also set up
    /// a business identification number for your company during company setup, this transaction will be treated as a 
    /// business-to-business transaction for VAT purposes and it will be calculated according to VAT tax rules.
    global String businessIdentificationNo { get; set; }

    /// Specifies if the transaction should have value-added and cross-border taxes calculated with the seller as the importer of record.
    /// 
    /// Some taxes only apply if the seller is the importer of record for a product. In cases where companies are working together to
    /// ship products, there may be mutual agreement as to which company is the entity designated as importer of record. The importer
    /// of record will then be the company designated to pay taxes marked as being obligated to the importer of record.
    /// 
    /// Set this value to `true` to consider your company as the importer of record and collect these taxes.
    /// 
    /// This value may also be set at the Nexus level. See `NexusModel` for more information.
    global Boolean? isSellerImporterOfRecord { get; set; }

    /// User-supplied description for this transaction.
    global String description { get; set; }

    /// User-supplied email address relevant for this transaction.
    global String email { get; set; }

    /// If the user wishes to request additional debug information from this transaction, specify a level higher than `normal`.
    global TaxDebugLevel? debugLevel { get; set; }
}
