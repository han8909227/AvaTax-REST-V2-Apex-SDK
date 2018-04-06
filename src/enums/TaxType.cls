/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Tax type

global enum TaxType
{

    /// Match Lodging tax type
    Lodging,

    /// Match bottle tax type
    Bottle,

    /// EWaste tax type
    EWaste,

    /// LandedCost tax type
    LandedCost,

    /// Consumer Use Tax
    ConsumerUse,

    /// Medical Excise Tax
    Excise,

    /// Fee - PIFs (Public Improvement Fees) and RSFs (Retail Sales Fees)
    Fee,

    /// VAT/GST Input tax
    Input,

    /// VAT/GST Nonrecoverable Input tax
    Nonrecoverable,

    /// VAT/GST Output tax
    Output,

    /// Rental Tax
    Rental,

    /// Sales tax
    Sales,

    /// Use tax
    Use,

}
