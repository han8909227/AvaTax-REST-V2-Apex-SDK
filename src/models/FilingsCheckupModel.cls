/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Results of the Worksheet Checkup report

global class FilingsCheckupModel extends ErrorResult
{

    /// A collection of authorities in the report
    global List<FilingsCheckupAuthorityModel> authorities { get; set; }
}
