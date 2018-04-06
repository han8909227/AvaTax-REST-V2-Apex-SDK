/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Information about a physical area or zone in which a certificate can apply.
    /// An exposure zone for an exemption certificate will generally be a tax authority such
    /// as a state, country, or local government entity.

global class ExposureZoneModel extends ErrorResult
{

    /// A unique ID number representing this exposure zone.
    global Integer? id { get; set; }

    /// The unique ID number of the AvaTax company that recorded this customer.
    global Integer? companyId { get; set; }

    /// The short name of this exposure zone, suitable for use in a drop-down list.
    global String name { get; set; }

    /// A tag indicating
    global String tag { get; set; }

    /// A more complete description of this exposure zone, suitable for use as a tooltip or help text.
    global String description { get; set; }

    /// The date when this record was created.
    global DateTime? created { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modified { get; set; }

    /// Two or three character ISO 3166 region, province, or state name of this exposure zone.
    global String region { get; set; }

    /// Two character ISO 3166 county code for the country component of this exposure zone.
    global String country { get; set; }
}
