/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Replace an existing transaction recorded in AvaTax with a new one. */

global class AdjustTransactionModel extends ErrorResult
{

    /// A reason code indicating why this adjustment was made
    global AdjustmentReason adjustmentReason { get; set; }

    /// If the AdjustmentReason is "Other", specify the reason here.
    /// 
    /// This is required when the AdjustmentReason is 8 (Other).
    global String adjustmentDescription { get; set; }

    /// Replace the current transaction with tax data calculated for this new transaction
    global CreateTransactionModel newTransaction { get; set; }
}
