/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Use this object to provide an address and date range where your company does business.
    // This address will be used to determine what jurisdictions you should declare nexus and
    // calculate tax. */

global class DeclareNexusByAddressModel extends ErrorResult
{

    // The earliest date on which your company does business at this address. If you omit
    // a value in this field, nexus will be declared at the earliest possible date for this
    // jurisdiction.
    global DateTime effectiveDate { get; set; }

    // The date on which your company stopped doing business at this address, or empty if
    // your company has no plans to stop doing business at this address.
    global DateTime endDate { get; set; }

    // Specify the text case for the validated address result. If not specified, will return uppercase.
    global TextCase textCase { get; set; }

    // First line of the street address
    global String line1 { get; set; }

    // Second line of the street address
    global String line2 { get; set; }

    // Third line of the street address
    global String line3 { get; set; }

    // City component of the address
    global String city { get; set; }

    // Name or ISO 3166 code identifying the region within the country.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    // Name or ISO 3166 code identifying the country.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    // Postal Code / Zip Code component of the address.
    global String postalCode { get; set; }

    // Geospatial latitude measurement, in Decimal Degrees floating point format.
    global Decimal latitude { get; set; }

    // Geospatial longitude measurement, in Decimal Degrees floating point format.
    global Decimal longitude { get; set; }
}
