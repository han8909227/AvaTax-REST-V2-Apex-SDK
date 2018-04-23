/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an ECMS record, used internally by AvaTax to track information about exemptions. */

global class EcmsDetailModel extends ErrorResult
{

    // detail id
    global Integer exemptCertDetailId { get; set; }

    // exempt certificate id
    global Integer exemptCertId { get; set; }

    // State FIPS
    global String stateFips { get; set; }

    // Name or ISO 3166 code identifying the region within the country.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    // ID number
    global String idNo { get; set; }

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

    // End date of this exempt certificate
    global DateTime endDate { get; set; }

    // ID type of this exempt certificate
    global String idType { get; set; }

    // Is the tax code list an exculsion list?
    global Integer isTaxCodeListExclusionList { get; set; }

    // optional: list of tax code associated with this exempt certificate detail
    global List<EcmsDetailTaxCodeModel> taxCodes { get; set; }
}
