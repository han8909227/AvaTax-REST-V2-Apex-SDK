global class LocationModel extends ErrorResult
{
    /// The unique ID number of this location.
    global Long id { get; set; }

    /// The unique ID number of the company that operates at this location.
    global Long companyId { get; set; }

    /// A code that identifies this location. Must be unique within your company.
    global String locationCode { get; set; }

    /// A friendly name for this location.
    global String description { get; set; }

    /// Indicates whether this location is a physical place of business or a temporary salesperson location.
    global AddressTypeId addressTypeId { get; set; }

    /// Indicates the type of place of business represented by this location.
    global AddressCategoryId addressCategoryId { get; set; }

    /// The first line of the physical address of this location.
    global String line1 { get; set; }

    /// The second line of the physical address of this location.
    global String line2 { get; set; }

    /// The third line of the physical address of this location.
    global String line3 { get; set; }

    /// The city of the physical address of this location.
    global String city { get; set; }

    /// The county name of the physical address of this location. Not required.
    global String county { get; set; }

    /// The state, region, or province of the physical address of this location.
    global String region { get; set; }

    /// The postal code or zip code of the physical address of this location.
    global String postalCode { get; set; }

    /// The two character ISO-3166 country code of the physical address of this location.
    global String country { get; set; }

    /// Set this flag to true to indicate that this is the default location for this company.
    global Boolean isDefault { get; set; }

    /// Set this flag to true to indicate that this location has been registered with a tax authority.
    global Boolean isRegistered { get; set; }

    /// If this location has a different business name from its legal entity name, specify the "Doing Business As" name for this location.
    global String dbaName { get; set; }

    /// A friendly name for this location.
    global String outletName { get; set; }

    /// The date when this location was opened for business, or null if not known.
    global DateTime effectiveDate { get; set; }

    /// If this place of business has closed, the date when this location closed business.
    global DateTime endDate { get; set; }

    /// The most recent date when a transaction was processed for this location. Set by AvaTax.
    global DateTime lastTransactionDate { get; set; }

    /// The date when this location was registered with a tax authority. Not required.
    global DateTime registeredDate { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Long createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Long modifiedUserId { get; set; }

    /// Extra information required by certain jurisdictions for filing.
    /// For a list of settings recognized by Avalara, query the endpoint "/api/v2/definitions/locationquestions". 
    /// To determine the list of settings required for this location, query the endpoint "/api/v2/companies/(id)/locations/(id)/validate".
    global List<LocationSettingModel> settings { get; set; }
}