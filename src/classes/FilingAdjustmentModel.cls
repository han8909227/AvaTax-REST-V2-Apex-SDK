/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A model for return adjustments. */

global class FilingAdjustmentModel extends ErrorResult
{

    // The unique ID number for the adjustment.
    global Integer id { get; set; }

    // The filing return id that this applies too
    global Integer filingId { get; set; }

    // The adjustment amount.
    global Decimal amount { get; set; }

    // The filing period the adjustment is applied to.
    global AdjustmentPeriodTypeId period { get; set; }

    // The type of the adjustment.
    global AdjustmentTypeId type { get; set; }

    // Whether or not the adjustment has been calculated.
    global Boolean isCalculated { get; set; }

    // The account type of the adjustment.
    global PaymentAccountTypeId accountType { get; set; }

    // A descriptive reason for creating this adjustment.
    global String reason { get; set; }

    // The date when this record was created.
    global DateTime createdDate { get; set; }

    // The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    // The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    // The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }
}
