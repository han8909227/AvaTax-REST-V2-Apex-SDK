/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents one line item in a transaction */

global class LineItemModel extends ErrorResult
{

    /// The line number of this line within the document. This can be any text that is useful to you, such as numeric line numbers, alphabetic line numbers, or other text.
    global String number { get; set; }

    /// Quantity of items in this line. This quantity value should always be a positive value representing the quantity of product that changed hands, even when handling returns or refunds.
    // 
    // If not provided, or if set to zero, the quantity value is assumed to be one (1).
    global Decimal quantity { get; set; }

    /// Total amount for this line. The amount represents the net currency value that changed hands from the customer (represented by the `customerCode` field) to the company (represented by the `companyCode`) field.
    // 
    // For sale transactions, this value must be positive. It indicates the amount of money paid by the customer to the company.
    // 
    // For refund or return transactions, this value must be negative.
    global Decimal amount { get; set; }

    /// The addresses to use for this transaction line.
    // 
    // If you set this value to `null`, or if you omit this element from your API call, then instead the transaction
    // will use the `addresses` from the document level.
    // 
    // If you specify any other value besides `null`, only addresses specified for this line will be used for this line.
    global AddressesModel addresses { get; set; }

    /// Tax Code - System or Custom Tax Code.
    //  
    // You can use your own tax code mapping or standard Avalara tax codes. For a full list of tax codes, see `ListTaxCodes`.
    global String taxCode { get; set; }

    /// DEPRECATED - Please use `entityUseCode` instead.
    global String customerUsageType { get; set; }

    /// Entity Use Code - The client application customer or usage type. This field allows you to designate a type of usage that 
    // may make this transaction considered exempt by reason of exempt usage.
    // 
    // For a list of entity use codes, see the Definitions API `ListEntityUseCodes`.
    global String entityUseCode { get; set; }

    /// Item Code (SKU). If you provide an `itemCode` field, the AvaTax API will look up the item you created with the `CreateItems` API call
    // and use all the information available about that item for this transaction.
    global String itemCode { get; set; }

    /// Exemption certificate number for this line.
    global String exemptionCode { get; set; }

    /// True if the document discount should be applied to this line. If this value is false, or not provided, discounts will not be 
    // applied to this line even if they are specified on the root `discount` element.
    global Boolean discounted { get; set; }

    /// Indicates whether the `amount` for this line already includes tax.
    // 
    // If this value is `true`, the final price of this line including tax will equal the value in `amount`. 
    // 
    // If this value is `null` or `false`, the final price will equal `amount` plus whatever taxes apply to this line.
    global Boolean taxIncluded { get; set; }

    /// Revenue Account (Customer Defined Field).
    // 
    // This field is available for you to use to provide whatever information your implementation requires. It does not affect tax calculation.
    global String revenueAccount { get; set; }

    /// Ref1 (Customer Defined Field)
    // 
    // This field is available for you to use to provide whatever information your implementation requires. It does not affect tax calculation.
    global String ref1 { get; set; }

    /// Ref2 (Customer Defined Field)
    // 
    // This field is available for you to use to provide whatever information your implementation requires. It does not affect tax calculation.
    global String ref2 { get; set; }

    /// Item description.
    // 
    // For Streamlined Sales Tax (SST) customers, this field is required if an unmapped `itemCode` is used.
    global String description { get; set; }

    /// VAT business identification number for the customer for this line item. If you leave this field empty,
    // this line item will use whatever business identification number you provided at the transaction level.
    // 
    // If you specify a VAT business identification number for the customer in this transaction and you have also set up
    // a business identification number for your company during company setup, this transaction will be treated as a 
    // business-to-business transaction for VAT purposes and it will be calculated according to VAT tax rules.
    global String businessIdentificationNo { get; set; }

    /// Specifies a tax override for this line.
    global TaxOverrideModel taxOverride { get; set; }

    /// Special parameters that apply to this line within this transaction.
    // 
    // To get a full list of available parameters, please use the `ListParameters` API.
    global Dictionary<string, string> parameters { get; set; }

    /// The Item code for Custom Duty / Global Import tax determination
    // Harmonized Tariff System code for this transaction.
    // 
    // For a list of harmonized tariff codes, see the Definitions API for harmonized tariff codes.
    global String hsCode { get; set; }
}
