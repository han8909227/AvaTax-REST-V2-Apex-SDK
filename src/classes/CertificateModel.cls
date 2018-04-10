/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A certificate is a document stored in either AvaTax Exemptions or CertCapture. The certificate document
    // can contain information about a customer's eligibility for exemption from sales or use taxes based on
    // criteria you specify when you store the certificate. To view or manage your certificates directly, please 
    // log onto the administrative website for the product you purchased. */

global class CertificateModel extends ErrorResult
{

    // Unique ID number of this certificate.
    global Integer id { get; set; }

    // The unique ID number of the AvaTax company that recorded this certificate.
    global Integer companyId { get; set; }

    // The date when this certificate was signed.
    global DateTime signedDate { get; set; }

    // Expiration date when this certificate will no longer be valid.
    global DateTime expirationDate { get; set; }

    // File name for the image of this certificate.
    // 
    // When creating a certificate, if you do not upload a PDF or JPG image, you must specify the filename
    // of the certificate as it is tracked in your repository.
    // 
    // To create a certificate, you must provide one of the following fields: either a `filename`, a `pdf` file,
    // or an array of JPG `pages`. The API will return an error if you omit these fields or if you attempt to
    // put values in more than one of them.
    global String filename { get; set; }

    // True if this certificate is marked as valid. A valid certificate can be considered for exemption purposes.
    // When a certificate is marked invalid, it will no longer be considered when calculating exemption for
    // a customer.
    global Boolean valid { get; set; }

    // This value is true if the certificate has gone through the certificate validation process.
    // For more information on the certificate validation process, please see the Avalara Help Center.
    global Boolean verified { get; set; }

    // If this certificate provides exemption from transactional taxes, what percentage of the transaction 
    // is considered exempt?
    // 
    // For a fully exempt certificate, this percentage should be 100.
    global Decimal exemptPercentage { get; set; }

    // This value is true if this certificate is a single (or standalone) certificate. This value is set
    // during the audit stage of the certificate validation process.
    global Boolean isSingleCertificate { get; set; }

    // The exemption reason associated with this certificate.
    global ExemptionReasonModel exemptionReason { get; set; }

    // The date/time when this record was created.
    global DateTime createdDate { get; set; }

    // The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    // Number of pages contained within this certificate.
    global Integer pageCount { get; set; }

    // A list of customers to which this certificate applies. You can fetch this data by specifying
    // `$include=customers` when calling a certificate fetch API.
    global List<CustomerModel> customers { get; set; }

    // A list of purchase order numbers that are valid for use with this certificate.
    // 
    // If this certificate is applicable for all purchase order numbers, this field will be empty.
    // 
    // You can fetch this data by specifying `$include=ponumbers` when calling a certificate fetch API.
    global List<PoNumberModel> poNumbers { get; set; }

    // The exposure zone where this certificate is valid.
    global ExposureZoneModel exposureZone { get; set; }

    // A list of certificate attributes that apply to this certificate.
    // 
    // You can fetch this data by specifying `$include=attributes` when calling a certificate fetch API.
    global List<CertificateAttributeModel> attributes { get; set; }

    // This field is available for input only. To retrieve the image after creation, use the 
    // `DownloadCertificateImage` API.
    // 
    // When creating a certificate, you may optionally provide a PDF image in Base64 URLEncoded format. 
    // PDFs are automatically parsed into individual page JPG images and can be retrieved back
    // later as either the original PDF or the individual pages. 
    // 
    // To create a certificate, you must provide one of the following fields: either a `filename`, a `pdf` file,
    // or an array of JPG `pages`. The API will return an error if you omit these fields or if you attempt to
    // put values in more than one of them.
    global String pdf { get; set; }

    // This field is available for input only. To retrieve the image after creation, use the 
    // `DownloadCertificateImage` API.
    // 
    // When creating a certificate, you may optionally provide a list of JPG images, one per page, in
    // Base64 URLEncoded format. These JPG images are automatically combined into a single downloadable
    // PDF and can be retrieved back later as either the original JPG images or the combined PDF. 
    // 
    // To create a certificate, you must provide one of the following fields: either a `filename`, a `pdf` file,
    // or an array of JPG `pages`. The API will return an error if you omit these fields or if you attempt to
    // put values in more than one of them.
    global List<String> pages { get; set; }
}
