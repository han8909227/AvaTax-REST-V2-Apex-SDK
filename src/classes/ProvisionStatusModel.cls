/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Contains information about a company's exemption certificate status.
    /// 
    /// This model can be used to determine if your company is able to use the Customers, Certificates, and
    /// CertExpressInvites APIs within AvaTax. */

global class ProvisionStatusModel extends ErrorResult
{

    /// The status of exemption certificate setup for this company.
    /// 
    /// If this value is `Finished`, this company will then be able to use the Customers, Certificates, and
    /// CertExpressInvites APIs within AvaTax.
    global CertCaptureProvisionStatus status { get; set; }

    /// The accountId of the company represented by this status
    global Integer accountId { get; set; }

    /// The AvaTax company represented by this status
    global Integer companyId { get; set; }
}
