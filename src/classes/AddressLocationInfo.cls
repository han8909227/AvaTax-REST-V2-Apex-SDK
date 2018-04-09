/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an address to resolve. */

global class AddressLocationInfo
{

    /// If you wish to use the address of an existing location for this company, specify the address here.
    // Otherwise, leave this value empty.
    // 
    // The `locationCode` field on this object allows you to quickly use the address of an existing `locationModel` object instead
    // of having to retype the address completely.
    // 
    // This field does not affect the behavior of transactions that must be filed on location-based tax returns. To specify how a
    // transaction will be reported on location-based tax returns, please see the `reportingLocationCode` field 
    // on the [CreateTransactionModel](https://developer.avalara.com/api-reference/avatax/rest/v2/models/CreateTransactionModel/) element.
    global String locationCode { get; set; }

    /// First line of the street address
    global String line1 { get; set; }

    /// Second line of the street address
    global String line2 { get; set; }

    /// Third line of the street address
    global String line3 { get; set; }

    /// City component of the address
    global String city { get; set; }

    /// Name or ISO 3166 code identifying the region within the country.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// Name or ISO 3166 code identifying the country.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    /// Postal Code / Zip Code component of the address.
    global String postalCode { get; set; }

    /// Geospatial latitude measurement, in Decimal Degrees floating point format.
    global Decimal latitude { get; set; }

    /// Geospatial longitude measurement, in Decimal Degrees floating point format.
    global Decimal longitude { get; set; }
}
