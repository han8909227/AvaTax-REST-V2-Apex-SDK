/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a PostalCode and its associated data like: country, region, effective dates, etc. */

global class PostalCodeModel extends ErrorResult
{

    /// Country this PostalCode locates in
    global String country { get; set; }

    /// The Region/State/Province this PostalCode locates in
    global String region { get; set; }

    /// An Avalara assigned TaxRegion Id associated to the PostalCode
    global Integer? taxRegionId { get; set; }

    /// The date when the PostalCode becomes effective
    global DateTime? effDate { get; set; }

    /// The date when the PostalCode becomes expired
    global DateTime? endDate { get; set; }

    /// The postalCode
    global String postalCode { get; set; }
}
