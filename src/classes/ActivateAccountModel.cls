public class ActivateAccountModel extends ErrorResult
{
    /// Set this to true if and only if you accept Avalara's terms and conditions for your account.
    public Boolean acceptAvalaraTermsAndConditions { get; set; }

    /// Set this to true if and only if you have fully read Avalara's terms and conditions for your account.
    public Boolean haveReadAvalaraTermsAndConditions { get; set; }
}