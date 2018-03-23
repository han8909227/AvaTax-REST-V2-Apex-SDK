public class CertificateModel extends ErrorResult
{
    public Long id { get; set; }

    public Long companyId { get; set; }

    public DateTime signedDate { get; set; }

    public DateTime expirationDate { get; set; }

    public String filename { get; set; }

    public Boolean valid { get; set; }

    public Boolean verified { get; set; }

    public Decimal exemptPercentage { get; set; }

    public Boolean isSingleCertificate { get; set; }

    public ExemptionReasonModel exemptionReason { get; set; }

    public DateTime createdDate { get; set; }

    public DateTime modifiedDate { get; set; }

    public Long pageCount { get; set; }

    public List<CustomerModel> customers { get; set; }

    public List<PoNumberModel> poNumbers { get; set; }

    public ExposureZoneModel exposureZone { get; set; }

    public List<CertificateAttributeModel> attributes { get; set; }

    public String pdf { get; set; }

    public List<String> pages { get; set; }
}