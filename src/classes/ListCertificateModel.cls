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

global class ListCertificateModel extends ErrorResult
{
    global List<CertificateModel> result { get; set; }
}
