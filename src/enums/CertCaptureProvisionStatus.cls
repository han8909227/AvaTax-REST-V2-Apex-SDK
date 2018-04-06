/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// 

global enum CertCaptureProvisionStatus
{

    /// Account and company are provisioned
    Provisioned,

    /// Provision job is being queued
        ///  This could also be an indication that some companies under an account has been provisioned, while others
        ///  under the same account has not.
    InProgress,

    /// 
    NotProvisioned,

}
