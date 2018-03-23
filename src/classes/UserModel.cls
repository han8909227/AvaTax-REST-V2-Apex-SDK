global class UserModel extends ErrorResult
{
    global Long id { get; set; }

    global Long accountId { get; set; }

    global Long companyId { get; set; }

    global String userName { get; set; }

    global String firstName { get; set; }

    global String lastName { get; set; }

    global String email { get; set; }

    global String postalCode { get; set; }

    global SecurityRoleId securityRoleId { get; set; }

    global PasswordStatusId passwordStatus { get; set; }

    global Boolean isActive { get; set; }

    global DateTime createdDate { get; set; }

    global Long createdUserId { get; set; }

    global DateTime modifiedDate { get; set; }

    global Long modifiedUserId { get; set; }
}