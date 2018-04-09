/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/*  */

global class EcmsDetailTaxCodeModel extends ErrorResult
{

    /// Id of the exempt certificate detail tax code
    global Integer exemptCertDetailTaxCodeId { get; set; }

    /// exempt certificate detail id
    global Integer exemptCertDetailId { get; set; }

    /// tax code id
    global Integer taxCodeId { get; set; }
}
