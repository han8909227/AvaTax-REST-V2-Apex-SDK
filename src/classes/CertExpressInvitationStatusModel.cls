/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represent what is the current status of certificate request */

global class CertExpressInvitationStatusModel extends ErrorResult
{

    /// The status of the CertExpress invitation for this customer. If this status says
    global CertExpressInvitationStatus status { get; set; }

    /// The CertExpress invitation for the customer. If you specified an email address in the invitation
    /// request, this invitation will be sent via email. Otherwise, you are expected to direct the customer
    /// using a hyperlink directly in your application.
    global CertExpressInvitationModel invitation { get; set; }
}
