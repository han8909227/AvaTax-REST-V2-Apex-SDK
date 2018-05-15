/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents information about a single legal taxing jurisdiction */

global class JurisdictionModel extends ErrorResult
{

    // The code that is used to identify this jurisdiction
    global String code { get; set; }

    // The name of this jurisdiction
    global String name { get; set; }

    // The type of the jurisdiction, indicating whether it is a country, state/region, city, for example.
    global JurisdictionType typeField { get; set; }

    // The base rate of tax specific to this jurisdiction.
    global Decimal rate { get; set; }

    // The "Sales" tax rate specific to this jurisdiction.
    global Decimal salesRate { get; set; }

    // The Avalara-supplied signature code for this jurisdiction.
    global String signatureCode { get; set; }

    // Name or ISO 3166 code identifying the region within the country.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    // The "Seller's Use" tax rate specific to this jurisdiction.
    global Decimal useRate { get; set; }

    // The city name of this jurisdiction
    global String city { get; set; }

    // The county name of this jurisdiction
    global String county { get; set; }

    // Name or ISO 3166 code identifying the country of this jurisdiction.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    // A short name of the jurisidiction
    global String shortName { get; set; }

    // State FIPS code
    global String stateFips { get; set; }

    // County FIPS code
    global String countyFips { get; set; }

    // City FIPS code
    global String placeFips { get; set; }

    // Unique AvaTax Id of this Jurisdiction
    global Integer id { get; set; }

    // The date this jurisdiction starts to take effect on tax calculations
    global DateTime effectiveDate { get; set; }

    // The date this jurisdiction stops to take effect on tax calculations
    global DateTime endDate { get; set; }
}
