public class AccountConfigurationModel extends ErrorResult
{
    public Long accountId { get; set; }
    public String category { get; set; }
    public String name { get; set; }
    public String value { get; set; }
    public DateTime createdDate { get; set; }
    public Long createdUserId { get; set; }
    public DateTime modifiedDate { get; set; }
    public Long modifiedUserId { get; set; }
}