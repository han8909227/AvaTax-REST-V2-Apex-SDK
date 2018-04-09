/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a service that this account has subscribed to. */

global class SubscriptionModel extends ErrorResult
{

    /// The unique ID number of this subscription.
    global Integer id { get; set; }

    /// The unique ID number of the account this subscription belongs to.
    global Integer accountId { get; set; }

    /// The unique ID number of the service that the account is subscribed to. If this is provided, subscription description is ignored.
    global Integer subscriptionTypeId { get; set; }

    /// A friendly description of the service that the account is subscribed to. You can either provide the subscription type Id or this but not both. If 
    // subscription type Id is provided, then this information is ignored and this field will be updated with the information from subscription type id.
    global String subscriptionDescription { get; set; }

    /// The date when the subscription began.
    global DateTime effectiveDate { get; set; }

    /// If the subscription has ended or will end, this date indicates when the subscription ends.
    global DateTime endDate { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }
}
