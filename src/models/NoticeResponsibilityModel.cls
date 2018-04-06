/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// NoticeResponsibility Model

global class NoticeResponsibilityModel extends ErrorResult
{

    /// The unique ID number of this notice responsibility.
    global Integer? id { get; set; }

    /// The description name of this notice responsibility
    global String description { get; set; }

    /// Defines if the responsibility is active
    global Boolean? isActive { get; set; }

    /// The sort order of this responsibility
    global Integer? sortOrder { get; set; }
}
