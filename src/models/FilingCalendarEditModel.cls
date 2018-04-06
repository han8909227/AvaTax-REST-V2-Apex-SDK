/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// An edit to be made on a filing calendar.

global class FilingCalendarEditModel extends ErrorResult
{

    /// The name of the field to be modified.
    global String fieldName { get; set; }

    /// The unique ID of the filing calendar question. "Filing calendar question" is the wording displayed to users for a given field.
    global Integer questionId { get; set; }

    /// The current value of the field.
    global Dictionary<string, string> oldValue { get; set; }

    /// The new/proposed value of the field.
    global Dictionary<string, string> newValue { get; set; }
}
