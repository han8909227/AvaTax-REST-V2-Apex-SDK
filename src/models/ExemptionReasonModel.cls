/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// An exemption reason defines why a certificate allows a customer to be exempt
    /// for purposes of tax calculation. For a full list of defined exemption reasons,
    /// please call the `ListCertificateExemptionReasons` API.

global class ExemptionReasonModel extends ErrorResult
{

    /// A unique ID number representing this exemption reason.
    global Integer? id { get; set; }

    /// A friendly name describing this exemption reason.
    global String name { get; set; }
}
