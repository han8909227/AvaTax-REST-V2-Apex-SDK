/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Worksheet Checkup Report Suggested Form Model */

global class FilingsCheckupSuggestedFormModel extends ErrorResult
{

    /// Tax Authority ID of the suggested form returned
    global Integer? taxAuthorityId { get; set; }

    /// Country of the suggested form returned
    global String country { get; set; }

    /// Region of the suggested form returned
    global String region { get; set; }

    /// 
    global String returnName { get; set; }

    /// Name of the suggested form returned
    global String taxFormCode { get; set; }
}
