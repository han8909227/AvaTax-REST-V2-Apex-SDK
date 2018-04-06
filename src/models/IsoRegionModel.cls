/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents a region, province, or state within a country

global class IsoRegionModel extends ErrorResult
{

    /// The two-character ISO 3166 country code this region belongs to
    global String countryCode { get; set; }

    /// The three character ISO 3166 region code
    global String code { get; set; }

    /// The full name, using localized characters, for this region, in uppercase.
    /// 
    /// For names in proper or formal case, or for names in other languages, please examine the `localizedNames` element for an appropriate name.
    global String name { get; set; }

    /// The word in the local language that classifies what type of a region this represents
    global String classification { get; set; }

    /// For the United States, this flag indicates whether a U.S. State participates in the Streamlined
    /// Sales Tax program. For countries other than the US, this flag is null.
    global Boolean? streamlinedSalesTax { get; set; }

    /// A list of localized names in a variety of languages.
    /// 
    /// This list is maintained by the International Standards Organization.
    global List<IsoLocalizedName> localizedNames { get; set; }
}
