/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a customer to whom you sell products and/or services. */

global class CustomerModel extends ErrorResult
{

    /// Unique ID number of this customer.
    global Integer id { get; set; }

    /// The unique ID number of the AvaTax company that recorded this customer.
    global Integer companyId { get; set; }

    /// The unique code identifying this customer. Must be unique within your company.
    /// 
    /// This code should be used in the `customerCode` field of any call that creates or adjusts a transaction
    /// in order to ensure that all exemptions that apply to this customer are correctly considered.
    /// 
    /// Note: This field is case sensitive.
    global String customerCode { get; set; }

    /// A customer-configurable alternate ID number for this customer. You may set this value to match any
    /// other system that would like to reference this customer record.
    global String alternateId { get; set; }

    /// A friendly name identifying this customer.
    global String name { get; set; }

    /// Indicates the "Attn:" component of the address for this customer, if this customer requires mailings to be shipped 
    /// to the attention of a specific person or department name.
    global String attnName { get; set; }

    /// First line of the street address of this customer.
    global String line1 { get; set; }

    /// Second line of the street address of this customer.
    global String line2 { get; set; }

    /// City component of the street address of this customer.
    global String city { get; set; }

    /// Postal Code / Zip Code component of the address of this customer.
    global String postalCode { get; set; }

    /// The main phone number for this customer.
    global String phoneNumber { get; set; }

    /// The fax phone number for this customer, if any.
    global String faxNumber { get; set; }

    /// The main email address for this customer.
    global String emailAddress { get; set; }

    /// The name of the main contact person for this customer.
    global String contactName { get; set; }

    /// Date when this customer last executed a transaction.
    global DateTime lastTransaction { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

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

    /// Name or ISO 3166 code identifying the region within the country.
    /// 
    /// This field supports many different region identifiers:
    ///  * Two and three character ISO 3166 region codes
    ///  * Fully spelled out names of the region in ISO supported languages
    ///  * Common alternative spellings for many regions
    /// 
    /// For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// True if this customer record is specifically used for bill-to purposes.
    global Boolean isBill { get; set; }

    /// True if this customer record is specifically used for ship-to purposes.
    global Boolean isShip { get; set; }

    /// For customers in the United States, this field is the federal taxpayer ID number. For businesses, this is 
    /// a Federal Employer Identification Number. For individuals, this will be a Social Security Number.
    global String taxpayerIdNumber { get; set; }

    /// A list of exemption certficates that apply to this customer. You can fetch this data by specifying 
    /// `$include=certificates` when calling a customer fetch API.
    global List<CertificateModel> certificates { get; set; }

    /// A list of custom fields defined on this customer. 
    /// 
    /// For more information about custom fields, see the [Avalara Help Center article about custom fields](https://help.avalara.com/0021_Avalara_CertCapture/All_About_CertCapture/Edit_or_Remove_Details_about_Customers).
    global List<CustomFieldModel> customFields { get; set; }
}
