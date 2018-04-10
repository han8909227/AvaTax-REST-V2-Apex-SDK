/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an ISO 3166 recognized country */

global class IsoCountryModel extends ErrorResult
{

    // The two character ISO 3166 country code
    global String code { get; set; }

    // The three character ISO 3166 country code
    global String alpha3Code { get; set; }

    // The full name of this country in uppercase.
    // 
    // For names in proper or formal case, or for names in other languages, please examine the `localizedNames` element for an appropriate name.
    global String name { get; set; }

    // True if this country is a member of the European Union
    global Boolean isEuropeanUnion { get; set; }

    // A list of localized names in a variety of languages.
    // 
    // This list is maintained by the International Standards Organization.
    global List<IsoLocalizedName> localizedNames { get; set; }
}
