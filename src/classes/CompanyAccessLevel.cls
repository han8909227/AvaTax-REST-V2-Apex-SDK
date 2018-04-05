public enum CompanyAccessLevel
{
    /// No permission to access companies.
    None,

    /// Permission to access a single company and its children.
    SingleCompany,

    /// Permission to access all companies in a single account.
    SingleAccount,

    /// Permission to access all companies in all accounts. Reserved for system administration tasks.
    AllCompanies

 }