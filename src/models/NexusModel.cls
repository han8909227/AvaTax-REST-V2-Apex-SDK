/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents a declaration of nexus within a particular taxing jurisdiction.

global class NexusModel extends ErrorResult
{

    /// The unique ID number of this declaration of nexus.
    global Integer id { get; set; }

    /// The unique ID number of the company that declared nexus.
    global Integer? companyId { get; set; }

    /// Name or ISO 3166 code identifying the country in which this company declared nexus.
    /// 
    /// This field supports many different country identifiers:
    ///  * Two character ISO 3166 codes
    ///  * Three character ISO 3166 codes
    ///  * Fully spelled out names of the country in ISO supported languages
    ///  * Common alternative spellings for many countries
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    /// Name or ISO 3166 code identifying the region within the country.
    /// 
    /// If the `jurisTypeId` field is set to `CNT` or `Country`, this field can be left blank.
    /// 
    /// This field supports many different region identifiers:
    ///  * Two and three character ISO 3166 region codes
    ///  * Fully spelled out names of the region in ISO supported languages
    ///  * Common alternative spellings for many regions
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// (DEPRECATED) The jurisdiction type of the jurisdiction in which this company declared nexus.
    /// NOTE: Use jurisdictionTypeId instead.
    global JurisTypeId? jurisTypeId { get; set; }

    /// The type of the jurisdiction in which this company declared nexus.
    global JurisdictionType? jurisdictionTypeId { get; set; }

    /// The code identifying the jurisdiction in which this company declared nexus.
    global String jurisCode { get; set; }

    /// The common name of the jurisdiction in which this company declared nexus.
    global String jurisName { get; set; }

    /// The date when this nexus began. If not known, set to null.
    global DateTime? effectiveDate { get; set; }

    /// If this nexus will end or has ended on a specific date, set this to the date when this nexus ends.
    global DateTime? endDate { get; set; }

    /// The short name of the jurisdiction.
    global String shortName { get; set; }

    /// The signature code of the boundary region as defined by Avalara.
    global String signatureCode { get; set; }

    /// The state assigned number of this jurisdiction.
    global String stateAssignedNo { get; set; }

    /// The type of nexus that this company is declaring.
    /// 
    /// If you are voluntarily declaring nexus in a jurisdiction, you should select `SalesOrSellersUseTax` for your
    /// nexus type option. This option allows you to calculate tax correctly whether you are selling in-state or
    /// shipping from an out-of-state location.
    /// 
    /// If you are legally obligated to declare nexus due to physical presence or other sufficient nexus, you
    /// should select `SalesTax`. This indicates that, as a legal requirement, your company must always collect
    /// and remit full sales tax in this jurisdiction.
    /// 
    /// If you are participating in the Streamlined Sales Tax program, your SST administrator will select nexus
    /// settings for you in all SST jurisdictions. Do not select any SST options by yourself.
    global NexusTypeId? nexusTypeId { get; set; }

    /// Indicates whether this nexus is defined as origin or destination nexus.
    global Sourcing? sourcing { get; set; }

    /// True if you are also declaring local nexus within this jurisdiction.
    /// Many U.S. states have options for declaring nexus in local jurisdictions as well as within the state.
    global Boolean? hasLocalNexus { get; set; }

    /// If you are declaring local nexus within this jurisdiction, this indicates whether you are declaring only 
    /// a specified list of local jurisdictions, all state-administered local jurisdictions, or all local jurisdictions.
    global LocalNexusTypeId? localNexusTypeId { get; set; }

    /// Set this value to true if your company has a permanent establishment within this jurisdiction.
    global Boolean? hasPermanentEstablishment { get; set; }

    /// Optional - the tax identification number under which you declared nexus.
    global String taxId { get; set; }

    /// For the United States, this flag indicates whether this particular nexus falls within a U.S. State that participates 
    /// in the Streamlined Sales Tax program. For countries other than the US, this flag is null.
    global Boolean? streamlinedSalesTax { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// The type of nexus that this company is declaring.Replaces NexusTypeId.
    /// Use `/api/v2/definitions/taxtypegroups` for a list of tax type groups.
    global String nexusTaxTypeGroup { get; set; }

    /// The tax authority id associated with the jurisdiction the nexus is for
    global Int64? taxAuthorityId { get; set; }

    /// For nexus declarations at the country level, specifies whether this company is considered the importer of record in this nexus region.
    /// 
    /// Some taxes only apply if the seller is the importer of record for a product. In cases where companies are working together to
    /// ship products, there may be mutual agreement as to which company is the entity designated as importer of record. The importer
    /// of record will then be the company designated to pay taxes marked as being obligated to the importer of record.
    /// 
    /// Set this value to `true` to consider your company as the importer of record and collect these taxes. Leave this value as false
    /// or null and taxes will be calculated as if your company is not the importer of record.
    /// 
    /// This value may also be set during each transaction API call. See `CreateTransaction()` for more information.
    global Boolean? isSellerImporterOfRecord { get; set; }
}
