/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The tax region model. */

global class TaxRegionModel extends ErrorResult
{

    // The id of the tax region.
    global Integer id { get; set; }

    // The code of the tax region.
    global String code { get; set; }

    // The name of the tax region.
    global String name { get; set; }

    // The name of the county.
    global String county { get; set; }

    // The name of the city.
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

    // The ser code.
    global String serCode { get; set; }

    // The tax region signature code.
    global String signatureCode { get; set; }

    // The date this tax region starts to take effect.
    global DateTime effectiveDate { get; set; }

    // The date this tax region stops to take effect.
    global DateTime endDate { get; set; }

    // Is Acm flag.
    global Boolean isAcm { get; set; }

    // Is SST flag.
    global Boolean isSst { get; set; }
}
