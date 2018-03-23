public enum AccountStatusId
{
    /// This account is not currently active.
    Inactive,

    /// This account is active and in use.
    Active,

    /// This account is flagged as a test account and may be temporary.
    Test,

    /// The account is new and is currently in the onboarding process.
    NewAccount
}