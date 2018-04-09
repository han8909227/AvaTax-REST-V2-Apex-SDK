/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Model with options for actual filing calendar output based on user edits to filing calendar. */

global class CycleEditOptionModel extends ErrorResult
{

    /// Whether or not changes can be made to the filing calendar.
    global Boolean success { get; set; }

    /// The message to present to the user when calendar is successfully or unsuccessfully changed.
    global String message { get; set; }

    /// Whether or not the user should be warned of a change, because some changes are risky and may be being done not in accordance with jurisdiction rules.
    // For example, user would be warned if user changes filing frequency to new frequency with a start date during an accrual month of the existing frequency.
    global Boolean customerMustApprove { get; set; }

    /// True if the filing calendar must be cloned to allow this change; false if the existing filing calendar can be changed itself.
    global Boolean mustCloneFilingCalendar { get; set; }

    /// The effective date of the filing calendar (only applies if cloning).
    global DateTime clonedCalendarEffDate { get; set; }

    /// The expired end date of the old filing calendar (only applies if cloning).
    global DateTime expiredCalendarEndDate { get; set; }
}
