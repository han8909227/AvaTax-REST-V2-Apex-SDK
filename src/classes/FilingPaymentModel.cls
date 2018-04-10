/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A model for return payments. */

global class FilingPaymentModel extends ErrorResult
{

    // The unique ID number for the payment.
    global Integer id { get; set; }

    // The filing return id that this applies too
    global Integer filingId { get; set; }

    // The payment amount.
    global Decimal paymentAmount { get; set; }

    // The type of the payment.
    global PaymentType type { get; set; }

    // Whether or not the payment has been calculated.
    global Boolean isCalculated { get; set; }

    // The date when this record was created.
    global DateTime createdDate { get; set; }

    // The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    // The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    // The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }
}
