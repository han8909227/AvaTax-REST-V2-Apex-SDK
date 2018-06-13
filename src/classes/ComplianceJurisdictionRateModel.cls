/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A flattened model for jurisdictions and rates. */

global class ComplianceJurisdictionRateModel extends ErrorResult
{

    // The id of the jurisdiction.
    global Integer jurisdictionId { get; set; }

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

    // Name or ISO 3166 code identifying the region within the country.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    // The name of the jurisdiction.
    global String name { get; set; }

    // The type of the jurisdiction, indicating whether it is a country, state/region, city, for example.
    global String jurisdictionTypeId { get; set; }

    // The compontent rate.
    global Decimal rate { get; set; }

    // The rate type.
    global String rateTypeId { get; set; }

    // The tax type.
    global String taxTypeId { get; set; }

    // The date this rate is starts to take effect.
    global DateTime effectiveDate { get; set; }

    // The date this rate is no longer active.
    global DateTime endDate { get; set; }

    // The state assigned code.
    global String stateAssignedCode { get; set; }

    // The id of the tax authority.
    global Integer taxAuthorityId { get; set; }
}
