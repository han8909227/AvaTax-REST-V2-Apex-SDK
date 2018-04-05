global class AddressesModel extends ErrorResult
{
    /// <summary>
    /// If this transaction occurred at a retail point-of-sale location, provide that single address here and leave
    /// all other address types null.
    /// </summary>
    global AddressLocationInfo singleLocation { get; set; }

    /// <summary>
    /// The origination address where the products were shipped from, or from where the services originated.
    /// </summary>
    global AddressLocationInfo shipFrom { get; set; }

    /// <summary>
    /// The destination address where the products were shipped to, or where the services were delivered.
    /// </summary>
    global AddressLocationInfo shipTo { get; set; }

    /// <summary>
    /// The place of business where you receive the customer's order. This address type is valid in the United States only
    /// and only applies to tangible personal property.
    /// </summary>
    global AddressLocationInfo pointOfOrderOrigin { get; set; }

    /// <summary>
    /// The place of business where you accept/approve the customer’s order,
    /// thereby becoming contractually obligated to make the sale. This address type is valid in the United States only
    /// and only applies to tangible personal property.
    /// </summary>
    global AddressLocationInfo pointOfOrderAcceptance { get; set; }

}