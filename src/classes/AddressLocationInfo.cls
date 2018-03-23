global class AddressLocationInfo
{
    /// If you wish to use the address of an existing location for this company, specify the address here.
    /// Otherwise, leave this value empty.
    global String locationCode { get; set; }

    /// First line of the street address
    global String line1 { get; set; }

    /// Second line of the street address
    global String line2 { get; set; }

    /// Third line of the street address
    global String line3 { get; set; }

    /// City component of the address
    global String city { get; set; }

    /// State / Province / Region component of the address.
    global String region { get; set; }

    /// Two character ISO 3166 Country Code. Call `ListCountries` for a list of ISO 3166 country codes.
    global String country { get; set; }

    /// Postal Code / Zip Code component of the address.
    global String postalCode { get; set; }

    /// Geospatial latitude measurement, in Decimal Degrees floating point format.
    global Decimal latitude { get; set; }

    /// <summary>
    /// Geospatial longitude measurement, in Decimal Degrees floating point format.
    /// </summary>
    global Decimal longitude { get; set; }
}