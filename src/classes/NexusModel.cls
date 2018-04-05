global class NexusModel extends ErrorResult
{
    /// The unique ID number of this declaration of nexus.
    global Long id { get; set; }

    /// The unique ID number of the company that declared nexus.
    global Long companyId { get; set; }

    /// The two character ISO-3166 country code of the country in which this company declared nexus.
    global String country { get; set; }

    /// The two or three character ISO region code of the region, state, or province in which this company declared nexus.
    global String region { get; set; }

    /// The jurisdiction type of the jurisdiction in which this company declared nexus.
    global JurisTypeId jurisTypeId { get; set; }

    /// The code identifying the jurisdiction in which this company declared nexus.
    global String jurisCode { get; set; }

    /// The common name of the jurisdiction in which this company declared nexus.
    global String jurisName { get; set; }

    /// The date when this nexus began. If not known, set to null.
    global DateTime effectiveDate { get; set; }

    /// If this nexus will end or has ended on a specific date, set this to the date when this nexus ends.
    global DateTime endDate { get; set; }

    /// The short name of the jurisdiction.
    global String shortName { get; set; }

    /// The signature code of the boundary region as defined by Avalara.
    global String signatureCode { get; set; }

    /// The state assigned number of this jurisdiction.
    global String stateAssignedNo { get; set; }

    /// (DEPRECATED) The type of nexus that this company is declaring.
    /// Please use NexusTaxTypeGroupId instead.
    global NexusTypeId nexusTypeId { get; set; }

    /// Indicates whether this nexus is defined as origin or destination nexus.
    global Sourcing sourcing { get; set; }

    /// True if you are also declaring local nexus within this jurisdiction.
    /// Many U.S. states have options for declaring nexus in local jurisdictions as well as within the state.
    global Boolean hasLocalNexus { get; set; }

    /// If you are declaring local nexus within this jurisdiction, this indicates whether you are declaring only 
    /// a specified list of local jurisdictions, all state-administered local jurisdictions, or all local jurisdictions.
    global LocalNexusTypeId localNexusTypeId { get; set; }

    /// Set this value to true if your company has a permanent establishment within this jurisdiction.
    global Boolean hasPermanentEstablishment { get; set; }

    /// Optional - the tax identification number under which you declared nexus.
    global String taxId { get; set; }

    /// For the United States, this flag indicates whether this particular nexus falls within a U.S. State that participates 
    /// in the Streamlined Sales Tax program. For countries other than the US, this flag is null.
    global Boolean streamlinedSalesTax { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Long createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Long modifiedUserId { get; set; }

    /// The type of nexus that this company is declaring.Replaces NexusTypeId.
    /// Use `/api/v2/definitions/taxtypegroups` for a list of tax type groups.
    global String nexusTaxTypeGroup { get; set; }

    /// The tax authority id associated with the jurisdiction the nexus is for
    global Long taxAuthorityId { get; set; }
}