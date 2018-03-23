global enum LocalNexusTypeId
{
    /// Only the specific nexus objects declared for this company are declared.
    Selected,

    /// Customer declares nexus in all state administered taxing authorities.
    ///  This value only takes effect if you set `hasLocalNexus` = true.
    StateAdministered,

    /// Customer declares nexus in all local taxing authorities. 
    ///  This value only takes effect if you set `hasLocalNexus` = true.
    All
}