/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A contact person for a company. */

global class ContactModel extends ErrorResult
{

    /// The unique ID number of this contact.
    global Integer id { get; set; }

    /// The unique ID number of the company to which this contact belongs.
    global Integer? companyId { get; set; }

    /// A unique code for this contact.
    global String contactCode { get; set; }

    /// The first or given name of this contact.
    global String firstName { get; set; }

    /// The middle name of this contact.
    global String middleName { get; set; }

    /// The last or family name of this contact.
    global String lastName { get; set; }

    /// Professional title of this contact.
    global String title { get; set; }

    /// The first line of the postal mailing address of this contact.
    global String line1 { get; set; }

    /// The second line of the postal mailing address of this contact.
    global String line2 { get; set; }

    /// The third line of the postal mailing address of this contact.
    global String line3 { get; set; }

    /// The city of the postal mailing address of this contact.
    global String city { get; set; }

    /// Name or ISO 3166 code identifying the region within the country.
    /// 
    /// This field supports many different region identifiers:
    ///  * Two and three character ISO 3166 region codes
    ///  * Fully spelled out names of the region in ISO supported languages
    ///  * Common alternative spellings for many regions
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// The postal code or zip code of the postal mailing address of this contact.
    global String postalCode { get; set; }

    /// Name or ISO 3166 code identifying the country.
    /// 
    /// This field supports many different country identifiers:
    ///  * Two character ISO 3166 codes
    ///  * Three character ISO 3166 codes
    ///  * Fully spelled out names of the country in ISO supported languages
    ///  * Common alternative spellings for many countries
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    /// The email address of this contact.
    global String email { get; set; }

    /// The main phone number for this contact.
    global String phone { get; set; }

    /// The mobile phone number for this contact.
    global String mobile { get; set; }

    /// The facsimile phone number for this contact.
    global String fax { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
