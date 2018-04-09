/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Model with options for adding a new filing calendar */

global class CycleAddOptionModel extends ErrorResult
{

    /// True if this form can be added and filed for the current cycle. "Current cycle" is considered one month before the month of today's date.
    global Boolean available { get; set; }

    /// The period start date for the customer's first transaction in the jurisdiction being added
    global DateTime transactionalPeriodStart { get; set; }

    /// The period end date for the customer's last transaction in the jurisdiction being added
    global DateTime transactionalPeriodEnd { get; set; }

    /// The jurisdiction-assigned due date for the form
    global DateTime filingDueDate { get; set; }

    /// A descriptive name of the cycle and due date of form.
    global String cycleName { get; set; }

    /// The filing frequency of the form
    global String frequencyName { get; set; }

    /// A code assigned to the filing frequency
    global String filingFrequencyCode { get; set; }

    /// The filing frequency of the request
    global FilingFrequencyId filingFrequencyId { get; set; }

    /// An explanation for why this form cannot be added for the current cycle
    global String cycleUnavailableReason { get; set; }

    /// A list of outlet codes that can be assigned to this form for the current cycle
    global List<String> availableLocationCodes { get; set; }
}
