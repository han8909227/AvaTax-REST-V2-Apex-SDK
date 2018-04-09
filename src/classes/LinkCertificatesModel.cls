/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a customer to whom you sell products and/or services. */

global class LinkCertificatesModel extends ErrorResult
{

    /// An array of certificate ID numbers to link
    global Integer certificates { get; set; }
}
