/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Company Initialization Model */

global class CompanyInitializationModel extends ErrorResult
{

    /// Company Name
    global String name { get; set; }

    /// Company Code - used to distinguish between companies within your accounting system
    global String companyCode { get; set; }

    /// Vat Registration Id - leave blank if not known.
    global String vatRegistrationId { get; set; }

    /// United States Taxpayer ID number, usually your Employer Identification Number if you are a business or your 
    // Social Security Number if you are an individual.
    // This value is required if you subscribe to Avalara Managed Returns or the SST Certified Service Provider services, 
    // but it is optional if you do not subscribe to either of those services.
    global String taxpayerIdNumber { get; set; }

    /// Address Line1
    global String line1 { get; set; }

    /// Line2
    global String line2 { get; set; }

    /// Line3
    global String line3 { get; set; }

    /// City
    global String city { get; set; }

    /// Name or ISO 3166 code identifying the region within the country.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String region { get; set; }

    /// Postal Code
    global String postalCode { get; set; }

    /// Name or ISO 3166 code identifying the country.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String country { get; set; }

    /// First Name
    global String firstName { get; set; }

    /// Last Name
    global String lastName { get; set; }

    /// Title
    global String title { get; set; }

    /// Email
    global String email { get; set; }

    /// Phone Number
    global String phoneNumber { get; set; }

    /// Mobile Number
    global String mobileNumber { get; set; }

    /// Fax Number
    global String faxNumber { get; set; }

    /// Parent Company ID
    global Integer parentCompanyId { get; set; }
}
