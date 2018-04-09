/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* An AvaTax account. */

global class AccountModel extends ErrorResult
{

    /// The unique ID number assigned to this account.
    global Integer id { get; set; }

    /// For system registrar use only.
    global String crmid { get; set; }

    /// The name of this account.
    global String name { get; set; }

    /// The earliest date on which this account may be used.
    global DateTime? effectiveDate { get; set; }

    /// If this account has been closed, this is the last date the account was open.
    global DateTime? endDate { get; set; }

    /// The current status of this account.
    global AccountStatusId? accountStatusId { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// Optional: A list of subscriptions granted to this account. To fetch this list, add the query string "?$include=Subscriptions" to your URL.
    global List<SubscriptionModel> subscriptions { get; set; }

    /// Optional: A list of all the users belonging to this account. To fetch this list, add the query string "?$include=Users" to your URL.
    global List<UserModel> users { get; set; }
}
