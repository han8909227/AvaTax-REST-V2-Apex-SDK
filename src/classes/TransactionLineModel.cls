/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* One line item on this transaction. */

global class TransactionLineModel extends ErrorResult
{

    // The unique ID number of this transaction line item.
    global Integer id { get; set; }

    // The unique ID number of the transaction to which this line item belongs.
    global Integer transactionId { get; set; }

    // The line number or code indicating the line on this invoice or receipt or document.
    global String lineNumber { get; set; }

    // The unique ID number of the boundary override applied to this line item.
    global Integer boundaryOverrideId { get; set; }

    // DEPRECATED - The customer usage type for this line item. Usage type often affects taxability rules.
    // Please use entityUseCode instead.
    global String customerUsageType { get; set; }

    // The entity use code for this line item. Usage type often affects taxability rules.
    global String entityUseCode { get; set; }

    // A description of the item or service represented by this line.
    global String description { get; set; }

    // The unique ID number of the destination address where this line was delivered or sold.
    // In the case of a point-of-sale transaction, the destination address and origin address will be the same.
    // In the case of a shipped transaction, they will be different.
    global Integer destinationAddressId { get; set; }

    // The unique ID number of the origin address where this line was delivered or sold.
    // In the case of a point-of-sale transaction, the origin address and destination address will be the same.
    // In the case of a shipped transaction, they will be different.
    global Integer originAddressId { get; set; }

    // The amount of discount that was applied to this line item. This represents the difference between list price and sale price of the item.
    // In general, a discount represents money that did not change hands; tax is calculated on only the amount of money that changed hands.
    global Decimal discountAmount { get; set; }

    // The type of discount, if any, that was applied to this line item.
    global Integer discountTypeId { get; set; }

    // The amount of this line item that was exempt.
    global Decimal exemptAmount { get; set; }

    // The unique ID number of the exemption certificate that applied to this line item. It is the calc_id associated with a certificate in CertCapture.
    global Integer exemptCertId { get; set; }

    // The CertCapture Certificate ID
    global String certificateId { get; set; }

    // The customer Tax Id Number (tax_number) associated with a certificate - Sales tax calculation requests first determine if there is an applicable 
    // ECMS entry available, and will utilize it for exemption processing. If no applicable ECMS entry is available, the AvaTax service 
    // will determine if an Exemption Number field is populated or an Entity/Use Code is included in the sales tax calculation request, 
    // and will perform exemption processing using either of those two options.
    global String exemptNo { get; set; }

    // True if this item is taxable.
    global Boolean isItemTaxable { get; set; }

    // True if this item is a Streamlined Sales Tax line item.
    global Boolean isSSTP { get; set; }

    // The code string of the item represented by this line item.
    global String itemCode { get; set; }

    // The total amount of the transaction, including both taxable and exempt. This is the total price for all items.
    // To determine the individual item price, divide this by quantity.
    global Decimal lineAmount { get; set; }

    // The quantity of products sold on this line item.
    global Decimal quantity { get; set; }

    // A user-defined reference identifier for this transaction line item.
    global String ref1 { get; set; }

    // A user-defined reference identifier for this transaction line item.
    global String ref2 { get; set; }

    // The date when this transaction should be reported. By default, all transactions are reported on the date when the actual transaction took place.
    // In some cases, line items may be reported later due to delayed shipments or other business reasons.
    global DateTime reportingDate { get; set; }

    // The revenue account number for this line item.
    global String revAccount { get; set; }

    // Indicates whether this line item was taxed according to the origin or destination.
    global Sourcing sourcing { get; set; }

    // The tax for this line in this transaction.
    // 
    // If you used a `taxOverride` of type `taxAmount` for this line, this value 
    // will represent the amount of your override. AvaTax will still attempt to calculate the correct tax
    // for this line and will store that calculated value in the `taxCalculated` field.
    // 
    // You can compare the `tax` and `taxCalculated` fields to check for any discrepancies
    // between an external tax calculation provider and the calculation performed by AvaTax.
    global Decimal tax { get; set; }

    // The taxable amount of this line item.
    global Decimal taxableAmount { get; set; }

    // The amount of tax that AvaTax calculated for the transaction.
    // 
    // If you used a `taxOverride` of type `taxAmount` for this line, there will be a difference between
    // the `tax` field which represents your override, and the `taxCalculated` field which represents the
    // amount of tax that AvaTax calculated for this line.
    // 
    // You can compare the `tax` and `taxCalculated` fields to check for any discrepancies
    // between an external tax calculation provider and the calculation performed by AvaTax.
    global Decimal taxCalculated { get; set; }

    // The code string for the tax code that was used to calculate this line item.
    global String taxCode { get; set; }

    // The unique ID number for the tax code that was used to calculate this line item.
    global Integer taxCodeId { get; set; }

    // The date that was used for calculating tax amounts for this line item. By default, this date should be the same as the document date.
    // In some cases, for example when a consumer returns a product purchased previously, line items may be calculated using a tax date in the past
    // so that the consumer can receive a refund for the correct tax amount that was charged when the item was originally purchased.
    global DateTime taxDate { get; set; }

    // The tax engine identifier that was used to calculate this line item.
    global String taxEngine { get; set; }

    // If a tax override was specified, this indicates the type of tax override.
    global TaxOverrideTypeId taxOverrideType { get; set; }

    // VAT business identification number used for this transaction.
    global String businessIdentificationNo { get; set; }

    // If a tax override was specified, this indicates the amount of tax that was requested.
    global Decimal taxOverrideAmount { get; set; }

    // If a tax override was specified, represents the reason for the tax override.
    global String taxOverrideReason { get; set; }

    // Indicates whether the `amount` for this line already includes tax.
    // 
    // If this value is `true`, the final price of this line including tax will equal the value in `amount`. 
    // 
    // If this value is `null` or `false`, the final price will equal `amount` plus whatever taxes apply to this line.
    global Boolean taxIncluded { get; set; }

    // Optional: A list of tax details for this line item. 
    // 
    // Tax details represent taxes being charged by various tax authorities. Taxes that appear in the `details` collection are intended to be 
    // displayed to the customer and charged as a 'tax' on the invoice.
    // 
    // To fetch this list, add the query string `?$include=Details` to your URL.
    global List<TransactionLineDetailModel> details { get; set; }

    // Optional: A list of non-passthrough tax details for this line item.
    // 
    // Tax details represent taxes being charged by various tax authorities. Taxes that appear in the `nonPassthroughDetails` collection are 
    // taxes that must be paid directly by the company and not shown to the customer.
    global List<TransactionLineDetailModel> nonPassthroughDetails { get; set; }

    // Optional: A list of location types for this line item. To fetch this list, add the query string "?$include=LineLocationTypes" to your URL.
    global List<TransactionLineLocationTypeModel> lineLocationTypes { get; set; }

    // Contains a list of extra parameters that were set when the transaction was created.
    global Map<string, string> parameters { get; set; }

    // The cross-border harmonized system code (HSCode) used to calculate tariffs and duties for this line item. 
    // For a full list of HS codes, see `ListCrossBorderCodes()`.
    global String hsCode { get; set; }

    // Indicates the cost of insurance and freight for this line.
    global Decimal costInsuranceFreight { get; set; }

    // Indicates the VAT code for this line item.
    global String vatCode { get; set; }

    // Indicates the VAT number type for this line item.
    global Integer vatNumberTypeId { get; set; }
}
