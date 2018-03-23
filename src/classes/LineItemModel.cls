global class LineItemModel extends ErrorResult
{
    /// Line number within this document
    global String lineNumber { get; set; }

    /// Quantity of items in this line
    global Decimal quantity { get; set; }

    /// Total amount for this line
    global Decimal amount { get; set; }

    /// The addresses to use for this transaction line.
    /// 
    /// If you set this value to `null`, or if you omit this element from your API call, then instead the transaction
    /// will use the `addresses` from the document level.
    /// 
    /// If you specify any other value besides `null`, only addresses specified for this line will be used for this line.
    global AddressesModel addresses { get; set; }

    /// Tax Code - System or Custom Tax Code.
    /// You can use your own tax code mapping or standard Avalara tax codes. For a full list of tax codes, see `ListTaxCodes`.
    global String taxCode { get; set; }

    /// Customer Usage Type - The client application customer or usage type.
    global String customerUsageType { get; set; }

    /// Item Code (SKU)
    global String itemCode { get; set; }

    /// Exemption number for this line
    global String exemptionCode { get; set; }

    /// True if the document discount should be applied to this line
    global Boolean discounted { get; set; }

    /// Indicates if line has Tax Included; defaults to false
    global Boolean taxIncluded { get; set; }

    /// Revenue Account
    global String revenueAccount { get; set; }

    /// Reference 1 - Client specific reference field
    global String ref1 { get; set; }

    /// Reference 2 - Client specific reference field
    global String ref2 { get; set; }

    /// Item description. This is required for SST transactions if an unmapped ItemCode is used.
    global String description { get; set; }

    /// VAT business identification number for the customer for this line item. If you leave this field empty,
    /// this line item will use whatever business identification number you provided at the transaction level.
    /// If you specify a VAT business identification number for the customer in this transaction and you have also set up
    /// a business identification number for your company during company setup, this transaction will be treated as a 
    /// business-to-business transaction for VAT purposes and it will be calculated according to VAT tax rules.
    global String businessIdentificationNo { get; set; }

    /// Specifies a tax override for this line
    global TaxOverrideModel taxOverride { get; set; }

    /// Special parameters that apply to this line within this transaction.
    /// To get a full list of available parameters, please use the /api/v2/definitions/parameters endpoint.
    global Map<string, string> parameters { get; set; }
}