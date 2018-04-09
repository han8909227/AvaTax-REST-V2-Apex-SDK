/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an override of tax jurisdictions for a specific address.
    // 
    // During the time period represented by EffDate through EndDate, all tax decisions for addresses matching
    // this override object will be assigned to the list of jurisdictions designated in this object. */

global class JurisdictionOverrideModel extends ErrorResult
{

    /// The unique ID number of this override.
    global Integer id { get; set; }

    /// The unique ID number assigned to this account.
    global Integer accountId { get; set; }

    /// A description of why this jurisdiction override was created.
    global String description { get; set; }

    /// The street address of the physical location affected by this override.
    global String line1 { get; set; }

    /// The city address of the physical location affected by this override.
    global String city { get; set; }

    /// Name or ISO 3166 code identifying the region within the country to be affected by this override.
    // 
    // Note that only United States addresses are affected by the jurisdiction override system.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// The two character ISO-3166 country code of the country affected by this override.
    // 
    // Note that only United States addresses are affected by the jurisdiction override system.
    global String country { get; set; }

    /// The postal code of the physical location affected by this override.
    global String postalCode { get; set; }

    /// The date when this override first takes effect. Set this value to null to affect all dates up to the end date.
    global DateTime effectiveDate { get; set; }

    /// The date when this override will cease to take effect. Set this value to null to never expire.
    global DateTime endDate { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }

    /// A list of the tax jurisdictions that will be assigned to this overridden address.
    global List<JurisdictionModel> jurisdictions { get; set; }

    /// The TaxRegionId of the new location affected by this jurisdiction override.
    global Integer taxRegionId { get; set; }

    /// The boundary level of this override
    global BoundaryLevel boundaryLevel { get; set; }

    /// True if this is a default boundary
    global Boolean isDefault { get; set; }
}
