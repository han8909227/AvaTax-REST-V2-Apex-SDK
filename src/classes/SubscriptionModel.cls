global class SubscriptionModel extends ErrorResult
{
    /// <summary>
    /// The unique ID number of this subscription.
    /// </summary>
    global Long id { get; set; }

    /// <summary>
    /// The unique ID number of the account this subscription belongs to.
    /// </summary>
    global Long accountId { get; set; }

    /// <summary>
    /// The unique ID number of the service that the account is subscribed to. If this is provided, subscription description is ignored.
    /// </summary>
    global Long subscriptionTypeId { get; set; }

    /// <summary>
    /// A friendly description of the service that the account is subscribed to. You can either provide the subscription type Id or this but not both. If 
    /// subscription type Id is provided, then this information is ignored and this field will be updated with the information from subscription type id.
    /// </summary>
    global String subscriptionDescription { get; set; }

    /// <summary>
    /// The date when the subscription began.
    /// </summary>
    global DateTime effectiveDate { get; set; }

    /// <summary>
    /// If the subscription has ended or will end, this date indicates when the subscription ends.
    /// </summary>
    global DateTime endDate { get; set; }

    /// <summary>
    /// The date when this record was created.
    /// </summary>
    global DateTime createdDate { get; set; }

    /// <summary>
    /// The User ID of the user who created this record.
    /// </summary>
    global Long createdUserId { get; set; }

    /// <summary>
    /// The date/time when this record was last modified.
    /// </summary>
    global DateTime modifiedDate { get; set; }

    /// <summary>
    /// The user ID of the user who last modified this record.
    /// </summary>
    global Long modifiedUserId { get; set; }
}