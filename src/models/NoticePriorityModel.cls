/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Tax Notice Priority Model

global class NoticePriorityModel extends ErrorResult
{

    /// The unique ID number of this tax notice customer Priority.
    global Integer id { get; set; }

    /// The description name of this tax authority Priority.
    global String description { get; set; }

    /// A flag if the Priority is active
    global Boolean? activeFlag { get; set; }

    /// sort order of the Prioritys
    global Integer? sortOrder { get; set; }
}
