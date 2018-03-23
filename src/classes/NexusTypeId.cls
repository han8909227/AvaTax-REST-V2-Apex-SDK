global enum NexusTypeId
{
    /// Indicates no nexus
    None,

    /// Indicates the entity is voluntarily collecting tax (default)
    ///  This has replaced Collect
    SalesOrSellersUseTax,

    /// Indicates the entity is required to collect tax in the state
    ///  This has replaced Legal
    SalesTax,

    /// Indicates the entity is registered as a Volunteer in an SST state.
    ///  Only your SST administrator may set this option.
    SSTVolunteer,

    /// Indicates the entity is registered as a Non-Volunteer in an SST state.
    ///  Only your SST administrator may set this option.
    SSTNonVolunteer

}