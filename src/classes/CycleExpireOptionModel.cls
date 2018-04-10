/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Options for expiring a filing calendar. */

global class CycleExpireOptionModel extends ErrorResult
{

    // The period start date for the customer's first transaction in the jurisdiction being expired.
    global DateTime transactionalPeriodStart { get; set; }

    // The period end date for the customer's last transaction in the jurisdiction being expired.
    global DateTime transactionalPeriodEnd { get; set; }

    // The jurisdiction-assigned due date for the form.
    global DateTime filingDueDate { get; set; }

    // A descriptive name of the cycle and due date of the form.
    global String cycleName { get; set; }
}
