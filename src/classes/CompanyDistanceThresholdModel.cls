/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A company-distance-threshold model indicates the distance between a company
    // and the taxing borders of various countries. Distance thresholds are necessary
    // to correctly calculate some value-added taxes.
    // 
    // Distance thresholds only apply to sales of goods in certain countries. A distance threshold
    // is applied for each ship-from/ship-to combination of countries. The threshold amount is defined by
    // the ship-to country.
    // 
    // Generally, if you have exceeded a distance threshold for taxes between a pair of countries, your tax calculation
    // will be determined to be the rate in the destination country. If you have not exceeded the threshold,
    // your tax calculation will be determined to be the rate in the origin country.
    // 
    // The amount of a threshold is not tracked or managed in AvaTax, but the decision of your tax compliance department
    // as to whether you have exceeded this threshold is maintained in this object. 
    // 
    // By default, you are considered to have exceeded tax thresholds. If you wish to change this default, you can create 
    // a company-distance-threshold object to select the correct behavior for this origin/destination tax calculation process. */

global class CompanyDistanceThresholdModel extends ErrorResult
{

    /// A unique ID number representing this distance threshold object.
    global Integer id { get; set; }

    /// The ID number of the company that defined this distance threshold.
    global Integer companyId { get; set; }

    /// The origin country for this threshold.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String originCountry { get; set; }

    /// The destination country for this threshold.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String destinationCountry { get; set; }

    /// For distance threshold values that change over time, this is the earliest date for which this distance
    // threshold is valid. If null, this distance threshold is valid for all dates earlier than the `endDate` field.
    global DateTime effDate { get; set; }

    /// For distance threshold values that change over time, this is the latest date for which this distance
    // threshold is valid. If null, this distance threshold is valid for all dates later than the `effDate` field.
    global DateTime endDate { get; set; }

    /// True if your tax professional has determined that the value-added tax distance threshold is exceeded for this pair of countries.
    // 
    // If you set this value to `false`, your value added taxes will be calculated using the origin country. Otherwise, value
    // added taxes will be calculated on the destination country.
    global Boolean thresholdExceeded { get; set; }

    /// Indicates the distance threshold type.
    // 
    // This value can be either `Sale` or `Purchase`.
    global String type { get; set; }
}
