/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// A certificate attribute can be thought of as a feature or flag that is applied to a certificate.
    /// A single certificate can be linked to zero, one, or many certificate attributes. The full list of 
    /// attributes can be obtained by calling the `ListCertificateAttributes` API.

global class CertificateAttributeModel extends ErrorResult
{

    /// A unique ID number representing this certificate attribute.
    global Integer? id { get; set; }

    /// A friendly readable name for this certificate attribute.
    global String name { get; set; }

    /// A full help text description of the certificate attribute.
    global String description { get; set; }

    /// This value is true if this is a system-defined certificate attribute. System-defined attributes
    /// cannot be modified or deleted on the CertCapture website.
    global Boolean? isSystemCode { get; set; }
}
