/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an invitation for a customer to use CertExpress to self-report their own certificates.
    /// This invitation is delivered by your choice of method, or you can present a hyperlink to the user
    /// directly in your connector. Your customer will be redirected to https://app.certexpress.com/ where
    /// they can follow a step-by-step guide to enter information about their exemption certificates. The
    /// certificates entered will be recorded and automatically linked to their customer record. */

global class CertExpressInvitationModel extends ErrorResult
{

    /// A unique ID number representing this CertExpress invitation.
    global Integer? id { get; set; }

    /// The unique ID number of the AvaTax company that sent this invitation.
    global Integer? companyId { get; set; }

    /// The email address to which this invitation was sent. If this invitation was presented as a weblink, this value will be null.
    global String recipient { get; set; }

    /// The unique code of the customer that received this invitation.
    /// Note: This field is case sensitive. To have exemption certificates apply, this value should
    /// be the same as the one passed to create a customer.
    global String customerCode { get; set; }

    /// The customer who received this invitation.
    global CustomerModel customer { get; set; }

    /// The attached cover letter object to this request.
    global CoverLetterModel coverLetter { get; set; }

    /// The status of the emails associated with this invitation. If this invitation was sent via email,
    /// this value will change to `Sent` when the email message has been sent.
    global String emailStatus { get; set; }

    /// True if this invitation contained a cover letter only.
    global Boolean? coverLettersOnly { get; set; }

    /// When an invitation is sent, it contains a list of exposure zones for which the customer is invited to upload
    /// their exemption certificates. This list contains the ID numbers of the exposure zones identified.
    /// 
    /// For a list of exposure zones, please call `ListCertificateExposureZones`.
    global List<Int32> exposureZones { get; set; }

    /// The list of exemption reasons identified by this CertExpress invitation.
    /// 
    /// For a list of reason codes, please call `ListCertificateExemptReasons`.
    global List<Int32> exemptReasons { get; set; }

    /// Indicates the method that was used to deliver this CertExpress invitation.
    global CertificateRequestDeliveryMethod? deliveryMethod { get; set; }

    /// The custom message delivered with this invitation.
    global String message { get; set; }

    /// The date of the invitation.
    global DateTime? date { get; set; }

    /// The web link (URL) that a customer can click on or visit to begin using this CertExpress invitation. 
    /// 
    /// This value is only usable if the status of this invitation is `Ready` and the request was created with type `Download`.
    /// NOTE: This link usually takes a few minutes to be available.
    global String requestLink { get; set; }
}
