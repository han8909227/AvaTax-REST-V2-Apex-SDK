/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Indicates one element of a sales tax rate. */

global class RateModel extends ErrorResult
{

    // The sales tax rate for general tangible personal property in this jurisdiction.
    global Decimal rate { get; set; }

    // A readable name of the tax or taxing jurisdiction related to this tax rate.
    global String name { get; set; }

    // The type of jurisdiction associated with this tax rate.
    global JurisdictionType typeField { get; set; }
}
