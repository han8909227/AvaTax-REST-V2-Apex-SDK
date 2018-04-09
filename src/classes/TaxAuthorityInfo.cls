/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Information about a tax authority relevant for an address. */

global class TaxAuthorityInfo
{

    /// A unique ID number assigned by Avalara to this tax authority.
    global String avalaraId { get; set; }

    /// The friendly jurisdiction name for this tax authority.
    global String jurisdictionName { get; set; }

    /// The type of jurisdiction referenced by this tax authority.
    global JurisdictionType jurisdictionType { get; set; }

    /// An Avalara-assigned signature code for this tax authority.
    global String signatureCode { get; set; }
}
