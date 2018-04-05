global virtual class ContactModel extends ErrorResult
{
    /// The unique ID number of this contact.
    global Long id { get; set; }

    /// The unique ID number of the company to which this contact belongs.
    global Long companyId { get; set; }

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

    /// The state, region, or province of the postal mailing address of this contact.
    global String region { get; set; }

    /// The postal code or zip code of the postal mailing address of this contact.
    global String postalCode { get; set; }

    /// The ISO 3166 two-character country code of the postal mailing address of this contact.
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
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Long createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Long modifiedUserId { get; set; }
}