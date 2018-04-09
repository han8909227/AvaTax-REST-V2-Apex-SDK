/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The way of delivering request */

global enum CertificateRequestDeliveryMethod
{

    /// The invitation will be sent via email to the recipient's email address.
    Email,

    /// The invitation will be sent via facsimile to the recipient's facsimile phone number.
        ///  
        ///  Facsimile transmission make take time to process and deliver via phone lines.
    Fax,

    /// The request will be processed and turned into a web link (URL) which the user can click on to visit the CertExpress site and immediately
        ///  begin entering data about their certificates.
    Download,

}
