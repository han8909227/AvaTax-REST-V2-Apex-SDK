/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// TaxOverrideTypeId

global enum TaxOverrideTypeId
{

    /// No override
    None,

    /// Tax was overriden by the client
    TaxAmount,

    /// Entity exemption was ignored (e.g. item was consumed)
    Exemption,

    /// Only the tax date was overriden
    TaxDate,

    /// To support Consumer Use Tax
    AccruedTaxAmount,

    /// Derive the taxable amount from the tax amount
    DeriveTaxable,

}
