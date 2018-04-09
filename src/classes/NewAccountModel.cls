/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents information about a newly created account */

global class NewAccountModel extends ErrorResult
{

    /// This is the ID number of the account that was created
    global Integer accountId { get; set; }

    /// This is the email address to which credentials were mailed
    global String accountDetailsEmailedTo { get; set; }

    /// The date and time when this account was created
    global DateTime createdDate { get; set; }

    /// The date and time when account information was emailed to the user
    global DateTime emailedDate { get; set; }

    /// If this account includes any limitations, specify them here
    global String limitations { get; set; }

    /// The license key of the account that was created
    global String licenseKey { get; set; }

    /// The payment url where the payment method can be set up
    global String paymentUrl { get; set; }
}
