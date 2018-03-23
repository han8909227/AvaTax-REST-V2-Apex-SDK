global class EcmsDetailModel extends ErrorResult
{
    /// <summary>
    /// detail id
    /// </summary>
    global Long exemptCertDetailId { get; set; }

    /// <summary>
    /// exempt certificate id
    /// </summary>
    global Long exemptCertId { get; set; }

    /// <summary>
    /// State FIPS
    /// </summary>
    global String stateFips { get; set; }

    /// <summary>
    /// Region or State
    /// </summary>
    global String region { get; set; }

    /// <summary>
    /// ID number
    /// </summary>
    global String idNo { get; set; }

    /// <summary>
    /// Country that this exempt certificate is for
    /// </summary>
    global String country { get; set; }

    /// <summary>
    /// End date of this exempt certificate
    /// </summary>
    global DateTime endDate { get; set; }

    /// <summary>
    /// ID type of this exempt certificate
    /// </summary>
    global String idType { get; set; }

    /// <summary>
    /// Is the tax code list an exculsion list?
    /// </summary>
    //global Byte isTaxCodeListExclusionList { get; set; } -- need to look for alternative

    /// <summary>
    /// optional: list of tax code associated with this exempt certificate detail
    /// </summary>
    global List<EcmsDetailTaxCodeModel> taxCodes { get; set; }
}