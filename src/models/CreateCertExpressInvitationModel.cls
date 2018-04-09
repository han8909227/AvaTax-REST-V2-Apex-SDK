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

global class CreateCertExpressInvitationModel extends ErrorResult
{

    /// If the value of `deliveryMethod` is set to `Email`, please specify the email address of the recipient 
    /// for the request.
    global String recipient { get; set; }

    /// If this invitation is sent via email or download, please specify the cover letter to use when building this
    /// invitation. For a list of cover letters, please call `ListCoverLetters`.
    global String coverLetterTitle { get; set; }

    /// You may optionally specify a list of exposure zones to request in this CertExpress invitation. If you list 
    /// more than one exposure zone, the customer will be prompted to provide an exemption certificate for each one. 
    /// If you do not provide a list of exposure zones, the customer will be prompted to select an exposure zone.
    /// 
    /// For a list of available exposure zones, please call `ListCertificateExposureZones`.
    global List<Int32> exposureZones { get; set; }

    /// You may optionally specify a list of exemption reasons to pre-populate in this CertExpress invitation.
    /// If you list exemption reasons, the customer will have part of their form already filled in when they visit
    /// the CertExpress website. 
    /// 
    /// For a list of available exemption reasons, please call `ListCertificateExemptReasons`.
    global List<Int32> exemptReasons { get; set; }

    /// Specify the type of invitation. CertExpress invitations can be delivered via email, web link, or
    /// facsimile. 
    /// 
    /// * If you specify `Email`, the invitation will be delivered via email. Please ask the customer to ensure that 
    /// * If you specify `Fax`, the invitation will be sent via fax to the customer's fax number on file.
    /// * If you specify `Download`, the invitation will be prepared as a web link that you can display to the customer.
    global CertificateRequestDeliveryMethod? deliveryMethod { get; set; }
}
