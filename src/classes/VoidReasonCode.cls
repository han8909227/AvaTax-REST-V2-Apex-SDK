/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Reason code for voiding or cancelling a transaction */

global enum VoidReasonCode
{

    // Unspecified reason
    Unspecified,

    // Post operation failed - Document status will be changed to unposted
    PostFailed,

    // Document deleted - If committed, document status will be changed to Cancelled. If not committed, document will be
        //  deleted.
    DocDeleted,

    // Document has been voided and DocStatus will be set to Cancelled
    DocVoided,

    // AdjustTax operation has been cancelled. Adjustment will be reversed.
    AdjustmentCancelled,

}
