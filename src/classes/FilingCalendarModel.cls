/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a commitment to file a tax return on a recurring basis.
    // Only used if you subscribe to Avalara Returns. */

global class FilingCalendarModel extends ErrorResult
{

    // The unique ID number of this filing calendar.
    global Integer id { get; set; }

    // The unique ID number of the company to which this filing calendar belongs.
    global Integer companyId { get; set; }

    // DEPRECATED - The legacy return name of the tax form to file. Please use `taxFormCode` instead.
    global String returnName { get; set; }

    // Name or ISO 3166 code identifying the country that issued the tax form for this filing calendar.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String formCountry { get; set; }

    // Name or ISO 3166 code identifying the region that issued the tax form for this filing calendar.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String formRegion { get; set; }

    // The Avalara standard tax form code of the tax form for this filing calendar. The first two characters of the tax form code
    // are the ISO 3166 country code of the country that issued this form.
    global String taxFormCode { get; set; }

    // If this calendar is for a location-specific tax return, specify the location code here. To file for all locations, leave this value NULL.
    global String locationCode { get; set; }

    // If this calendar is for a location-specific tax return, specify the location-specific behavior here.
    global OutletTypeId outletTypeId { get; set; }

    // Specify the ISO 4217 currency code for the currency to remit for this tax return. For all tax returns in the United States, specify "USD".
    global String paymentCurrency { get; set; }

    // The frequency on which this tax form is filed.
    global FilingFrequencyId filingFrequencyId { get; set; }

    // A 16-bit bitmap containing a 1 for each month when the return should be filed.
    global Integer months { get; set; }

    // Tax Registration ID for this Region - in the U.S., this is for your state.
    global String stateRegistrationId { get; set; }

    // Tax Registration ID for the local jurisdiction, if any.
    global String localRegistrationId { get; set; }

    // The Employer Identification Number or Taxpayer Identification Number that is to be used when filing this return.
    global String employerIdentificationNumber { get; set; }

    // DEPRECATED - The first line of the mailing address that will be used when filling out this tax return.
    // Field will be no longer be available after the 17.9 release.
    global String line1 { get; set; }

    // DEPRECATED - The second line of the mailing address that will be used when filling out this tax return.
    // Please note that some tax forms do not support multiple address lines.
    // 
    // Field will be no longer be available after the 17.9 release.
    global String line2 { get; set; }

    // DEPRECATED - The city name of the mailing address that will be used when filling out this tax return.
    // 
    // Field will be no longer be available after the 17.9 release.
    global String city { get; set; }

    // DEPRECATED - The state, region, or province of the mailing address that will be used when filling out this tax return.
    // 
    // Field will be no longer be available after the 17.9 release.
    global String region { get; set; }

    // DEPRECATED - The postal code or zip code of the mailing address that will be used when filling out this tax return.
    // 
    // Field will be no longer be available after the 17.9 release.
    global String postalCode { get; set; }

    // DEPRECATED - The two character ISO-3166 country code of the mailing address that will be used when filling out this tax return.
    // 
    // Field will be no longer be available after the 17.9 release.
    global String country { get; set; }

    // The first line of the mailing address that will be used when filling out this tax return.
    global String mailingAddressLine1 { get; set; }

    // The second line of the mailing address that will be used when filling out this tax return.
    // Please note that some tax forms do not support multiple address lines.
    global String mailingAddressLine2 { get; set; }

    // The city name of the mailing address that will be used when filling out this tax return.
    global String mailingAddressCity { get; set; }

    // Name or ISO 3166 code identifying the region of the mailing address that will be used when filling out this tax return.
    // 
    // This field supports many different region identifiers:
    //  * Two and three character ISO 3166 region codes
    //  * Fully spelled out names of the region in ISO supported languages
    //  * Common alternative spellings for many regions
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListRegions`.
    global String mailingAddressRegion { get; set; }

    // The postal code or zip code of the mailing address that will be used when filling out this tax return.
    global String mailingAddressPostalCode { get; set; }

    // Name or ISO 3166 code identifying the country of the mailing address that will be used when filling out this tax return.
    // 
    // This field supports many different country identifiers:
    //  * Two character ISO 3166 codes
    //  * Three character ISO 3166 codes
    //  * Fully spelled out names of the country in ISO supported languages
    //  * Common alternative spellings for many countries
    // 
    // For a full list of all supported codes and names, please see the Definitions API `ListCountries`.
    global String mailingAddressCountry { get; set; }

    // The phone number to be used when filing this return.
    global String phone { get; set; }

    // Special filing instructions to be used when filing this return.
    // Please note that requesting special filing instructions may incur additional costs.
    global String customerFilingInstructions { get; set; }

    // The legal entity name to be used when filing this return.
    global String legalEntityName { get; set; }

    // The earliest date for the tax period when this return should be filed.
    // This date specifies the earliest date for tax transactions that should be reported on this filing calendar.
    // Please note that tax is usually filed one month in arrears: for example, tax for January transactions is typically filed during the month of February.
    global DateTime effectiveDate { get; set; }

    // The last date for the tax period when this return should be filed.
    // This date specifies the last date for tax transactions that should be reported on this filing calendar.
    // Please note that tax is usually filed one month in arrears: for example, tax for January transactions is typically filed during the month of February.
    global DateTime endDate { get; set; }

    // The method to be used when filing this return.
    global FilingTypeId filingTypeId { get; set; }

    // If you file electronically, this is the username you use to log in to the tax authority's website.
    global String eFileUsername { get; set; }

    // If you file electronically, this is the password or pass code you use to log in to the tax authority's website.
    global String eFilePassword { get; set; }

    // If you are required to prepay a percentage of taxes for future periods, please specify the percentage in whole numbers; 
    // for example, the value 90 would indicate 90%.
    global Integer prepayPercentage { get; set; }

    // The type of tax to report on this return.
    global MatchingTaxType taxTypeId { get; set; }

    // Internal filing notes.
    global String internalNotes { get; set; }

    // Custom filing information field for Alabama.
    global String alSignOn { get; set; }

    // Custom filing information field for Alabama.
    global String alAccessCode { get; set; }

    // Custom filing information field for Maine.
    global String meBusinessCode { get; set; }

    // Custom filing information field for Iowa.
    global String iaBen { get; set; }

    // Custom filing information field for Connecticut.
    global String ctReg { get; set; }

    // Custom filing information field. Leave blank.
    global String other1Name { get; set; }

    // Custom filing information field. Leave blank.
    global String other1Value { get; set; }

    // Custom filing information field. Leave blank.
    global String other2Name { get; set; }

    // Custom filing information field. Leave blank.
    global String other2Value { get; set; }

    // Custom filing information field. Leave blank.
    global String other3Name { get; set; }

    // Custom filing information field. Leave blank.
    global String other3Value { get; set; }

    // The unique ID of the tax authority of this return.
    global Integer taxAuthorityId { get; set; }

    // The name of the tax authority of this return.
    global String taxAuthorityName { get; set; }

    // The type description of the tax authority of this return.
    global String taxAuthorityType { get; set; }

    // The date when this record was created.
    global DateTime createdDate { get; set; }

    // The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    // The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    // The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }

    // CompanyReturn settings for complext filing calendar
    global List<CompanyReturnSettingModel> settings { get; set; }
}
