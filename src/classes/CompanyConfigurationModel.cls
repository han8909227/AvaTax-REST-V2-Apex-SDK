/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents one configuration setting for this company */

global class CompanyConfigurationModel extends ErrorResult
{

    /// The unique ID number of the account to which this setting applies
    global Integer companyId { get; set; }

    /// The category of the configuration setting. Avalara-defined categories include `AddressServiceConfig` and `TaxServiceConfig`. Customer-defined categories begin with `X-`.
    global String category { get; set; }

    /// The name of the configuration setting
    global String name { get; set; }

    /// The current value of the configuration setting
    global String value { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }
}
