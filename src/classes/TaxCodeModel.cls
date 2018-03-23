global class TaxCodeModel extends ErrorResult
{
    /// <summary>
    /// The unique ID number of this tax code.
    /// </summary>
    global Long id { get; set; }

    /// <summary>
    /// The unique ID number of the company that owns this tax code.
    /// </summary>
    global Long companyId { get; set; }

    /// <summary>
    /// A code string that identifies this tax code.
    /// </summary>
    global String taxCode { get; set; }

    /// <summary>
    /// The type of this tax code.
    /// </summary>
    global String taxCodeTypeId { get; set; }

    /// <summary>
    /// A friendly description of this tax code.
    /// </summary>
    global String description { get; set; }

    /// <summary>
    /// If this tax code is a subset of a different tax code, this identifies the parent code.
    /// </summary>
    global String parentTaxCode { get; set; }

    /// <summary>
    /// True if this tax code type refers to a physical object. Read only field.
    /// </summary>
    global Boolean isPhysical { get; set; }

    /// <summary>
    /// The Avalara Goods and Service Code represented by this tax code.
    /// </summary>
    global Long goodsServiceCode { get; set; }

    /// <summary>
    /// The Avalara Entity Use Code represented by this tax code.
    /// </summary>
    global String entityUseCode { get; set; }

    /// <summary>
    /// True if this tax code is active and can be used in transactions.
    /// </summary>
    global Boolean isActive { get; set; }

    /// <summary>
    /// True if this tax code has been certified by the Streamlined Sales Tax governing board.
    /// By default, you should leave this value empty.
    /// </summary>
    global Boolean isSSTCertified { get; set; }

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