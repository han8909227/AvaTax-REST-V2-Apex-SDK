global class UPCModel extends ErrorResult
{
    global Long id { get; set; }

    global Long companyId { get; set; }

    global String upc { get; set; }

    global String legacyTaxCode { get; set; }

    global String description { get; set; }

    global DateTime effectiveDate { get; set; }

    global DateTime endDate { get; set; }

    global Long usage { get; set; }

    global Long isSystem { get; set; }

    global DateTime createdDate { get; set; }

    global Long createdUserId { get; set; }

    global DateTime modifiedDate { get; set; }

    global Long modifiedUserId { get; set; }
}