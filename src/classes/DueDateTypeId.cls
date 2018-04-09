/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A list of possible Due Date Types */

global enum DueDateTypeId
{

    /// Denotes form is due on the due day
    ByDay,

    /// Denotes form is due by last day of the month
    ByLastDay,

    /// Denotes form is due by second to last day of the month
    BySecondLastDay,

}
