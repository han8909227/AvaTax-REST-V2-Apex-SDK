/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a validated address */

global class ValidatedAddressInfo
{

    /// Address type code. One of: 
    /// * Firm or company address
    /// * General Delivery address
    /// * High-rise or business complex
    /// * PO Box address
    /// * Rural route address
    /// * Street or residential address
    global String addressType { get; set; }

    /// First line of the street address
    global String line1 { get; set; }

    /// Second line of the street address
    global String line2 { get; set; }

    /// Third line of the street address
    global String line3 { get; set; }

    /// City component of the address
    global String city { get; set; }

    /// Name or ISO 3166 code identifying the region within the country.
    /// 
    /// This field supports many different region identifiers:
    ///  * Two and three character ISO 3166 region codes
    ///  * Fully spelled out names of the region in ISO supported languages
    ///  * Common alternative spellings for many regions
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// Name or ISO 3166 code identifying the country.
    /// 
    /// This field supports many different country identifiers:
    ///  * Two character ISO 3166 codes
    ///  * Three character ISO 3166 codes
    ///  * Fully spelled out names of the country in ISO supported languages
    ///  * Common alternative spellings for many countries
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    /// Postal Code / Zip Code component of the address.
    global String postalCode { get; set; }

    /// Geospatial latitude measurement, in Decimal Degrees floating point format.
    global Decimal? latitude { get; set; }

    /// Geospatial longitude measurement, in Decimal Degrees floating point format.
    global Decimal? longitude { get; set; }
}
