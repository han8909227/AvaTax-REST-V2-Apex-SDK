/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Model for distinct jurisdictions. */

global class ComplianceJurisdictionModel extends ErrorResult
{

    // The id of the tax region.
    global Integer taxRegionId { get; set; }

    // The state assigned code for the jurisdiction.
    global String stateAssignedCode { get; set; }

    // The type of the jurisdiction, indicating whether it is a country, state/region, city, for example.
    global String jurisdictionTypeId { get; set; }

    // The name of the jurisdiction.
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

    // The name of the tax region.
    global String taxRegionName { get; set; }

    // The id of the tax authority.
    global Integer taxAuthorityId { get; set; }

    // Optional: A list of rates for this jurisdiction. To fetch this list, add the query string `?$include=TaxRates` to your URL.
    global List<ComplianceAggregatedTaxRateModel> rates { get; set; }
}
