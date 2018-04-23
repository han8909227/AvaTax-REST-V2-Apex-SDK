/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Filing Status */

global enum FilingStatusId
{
    // 
    PendingApproval,

    // 
    Dirty,

    // 
    ApprovedToFile,

    // 
    PendingFiling,

    // 
    PendingFilingOnBehalf,

    // 
    Filed,

    // 
    FiledOnBehalf,

    // 
    ReturnAccepted,

    // 
    ReturnAcceptedOnBehalf,

    // 
    PaymentRemitted,

    // 
    Voided,

    // 
    PendingReturn,

    // 
    PendingReturnOnBehalf,

    // 
    DoNotFile,

    // 
    ReturnRejected,

    // 
    ReturnRejectedOnBehalf,

    // 
    ApprovedToFileOnBehalf

}
