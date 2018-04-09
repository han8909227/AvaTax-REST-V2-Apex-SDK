/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Tax Authority Model */

global class TaxAuthorityModel extends ErrorResult
{

    /// The unique ID number of this tax authority.
    global Integer id { get; set; }

    /// The friendly name of this tax authority.
    global String name { get; set; }

    /// The type of this tax authority.
    global Integer taxAuthorityTypeId { get; set; }

    /// The unique ID number of the jurisdiction for this tax authority.
    global Integer jurisdictionId { get; set; }
}
