/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Describes an element in the harmonized tariff system.
    // 
    // According to the [United States International Trade Commission](https://www.usitc.gov), the harmonized tariff schedule is defined as follows:
    // 
    // The HTS is a U.S. nomenclature system used to classify traded goods based on their material composition, product name, and/or intended 
    // function. The HTS is designed so that each article falls into only one category. It is divided into chapters, each of which has a 2-digit 
    // number. Each product category within the various chapters is designated by 4, 6, 8, or 10 digits. The 4-digit categories are called 
    // "headings." The 6-, 8- and 10-digit classifications are called "subheadings."
    // 
    // Within AvaTax, the `HsCodeModel` object can refer to sections, chapters, headings, subheadings, or articles. Each object represents one
    // classification. Many of these objects have child objects underneath them; these child objects are more specific than their parent objects. */

global class HsCodeModel extends ErrorResult
{

    // The harmonized tariff system code for this section and chapter. 
    // 
    // A full HS code contains more than six characters. Partial HS codes with two, four, or six characters may have child codes underneath them.
    // A child code is one that contains greater specificity than a parent code. It is recommended that when you identify a product you use
    // the most detailed code available to identify it.
    // 
    // Top level sections do not have HS Codes.
    global String hsCode { get; set; }

    // A unique identifier for this harmonized tariff system code.
    // 
    // To search for a list of child codes underneath a specific HS code, search for codes where the child's `parentHsCodeId` value matches the parent's `id` value.
    global Integer id { get; set; }

    // The unique ID number of the parent HS code or HS code prefix.
    // 
    // To search for a list of child codes underneath a specific HS code, search for codes where the child's `parentHsCodeId` value matches the parent's `id` value.
    global Integer parentHsCodeId { get; set; }

    // A human readable description that identifies Code descriptive text for this Section, Chapter, Heading, or Subheading.
    global String description { get; set; }

    // The system to which this HS code belongs.
    global String systemField { get; set; }

    // The destination country identified with this HS Code. This value applies when certain products are classified in specific ways by
    // bilateral trade agreements.
    global String destinationCountry { get; set; }

    // For codes that have been expired or defined on specific dates, this value indicates the earliest
    // date for which this code is considered valid.
    // 
    // If this value is null, this code can be used for any valid date earlier than its end date.
    global DateTime effDate { get; set; }

    // For codes that have been expired or defined on specific dates, this value indicates the latest
    // date for which this code is considered valid.
    // 
    // If this value is null, this code can be used for any valid date later than its effective date.
    global DateTime endDate { get; set; }
}
