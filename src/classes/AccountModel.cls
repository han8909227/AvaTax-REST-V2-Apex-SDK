public class AccountModel extends ErrorResult
{
    /// The unique ID number assigned to this account.
    public Long id { get; set; }

    /// For system registrar use only.
    public String crmid { get; set; }

    /// The name of this account.
    public String name { get; set; }

    /// The earliest date on which this account may be used.
    public DateTime effectiveDate { get; set; }

    /// If this account has been closed, this is the last date the account was open.
    public DateTime endDate { get; set; }

    /// The current status of this account.
    public AccountStatusId accountStatusId { get; set; }

    /// The date when this record was created.
    public DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    public Long createdUserId { get; set; }

    /// The date/time when this record was last modified.
    public DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    public Long modifiedUserId { get; set; }

    /// Optional: A list of subscriptions granted to this account. To fetch this list, add the query string "?$include=Subscriptions" to your URL.
    public List<SubscriptionModel> subscriptions { get; set; }

    /// Optional: A list of all the users belonging to this account. To fetch this list, add the query string "?$include=Users" to your URL.
    public List<UserModel> users { get; set; }
}