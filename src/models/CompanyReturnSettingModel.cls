/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/*  */

global class CompanyReturnSettingModel extends ErrorResult
{

    /// The unique ID of this CompanyReturnsSetting
    global Int64? id { get; set; }

    /// The CompanyReturn Id
    global Int64 companyReturnId { get; set; }

    /// The TaxFormCatalog filingQuestionId.
    global Int64 filingQuestionId { get; set; }

    /// Filing question code as defined in TaxFormCatalog.
    global String filingQuestionCode { get; set; }

    /// The value of this setting
    global String value { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
