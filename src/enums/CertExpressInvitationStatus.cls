/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Indicates the status of a CertExpress invitation link.

global enum CertExpressInvitationStatus
{

    /// The CertExpress website is currently building a landing page for the customer. Please
        ///  wait about 10 seconds and fetch this request again to see when it will be ready.
    InProgress,

    /// Indicates that the CertExpress invitation has been completed and is ready to use.
    Ready,

}
