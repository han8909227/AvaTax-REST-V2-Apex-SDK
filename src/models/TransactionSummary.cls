/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Summary information about an overall transaction.

global class TransactionSummary
{

    /// Two character ISO-3166 country code.
    global String country { get; set; }

    /// Two or three character ISO region, state or province code, if applicable.
    global String region { get; set; }

    /// The type of jurisdiction that collects this tax.
    global JurisdictionType? jurisType { get; set; }

    /// Jurisdiction Code for the taxing jurisdiction
    global String jurisCode { get; set; }

    /// The name of the jurisdiction that collects this tax.
    global String jurisName { get; set; }

    /// The unique ID of the Tax Authority Type that collects this tax.
    global Integer? taxAuthorityType { get; set; }

    /// The state assigned number of the jurisdiction that collects this tax.
    global String stateAssignedNo { get; set; }

    /// The tax type of this tax.
    global TaxType? taxType { get; set; }

    /// The name of the tax.
    global String taxName { get; set; }

    /// Group code when special grouping is enabled.
    global String taxGroup { get; set; }

    /// (DEPRECATED) Indicates the tax rate type. Please use rateTypeCode instead.
    global RateType? rateType { get; set; }

    /// Indicates the code of the rate type. Use `/api/v2/definitions/ratetypes` for a full list of rate type codes.
    global String rateTypeCode { get; set; }

    /// Tax Base - The adjusted taxable amount.
    global Decimal? taxable { get; set; }

    /// Tax Rate - The rate of taxation, as a fraction of the amount.
    global Decimal? rate { get; set; }

    /// Tax amount - The calculated tax (Base * Rate).
    global Decimal? tax { get; set; }

    /// Tax Calculated by Avalara AvaTax. This may be overriden by a TaxOverride.TaxAmount.
    global Decimal? taxCalculated { get; set; }

    /// The amount of the transaction that was non-taxable.
    global Decimal? nonTaxable { get; set; }

    /// The amount of the transaction that was exempt.
    global Decimal? exemption { get; set; }
}
