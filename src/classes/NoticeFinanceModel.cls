/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents estimated financial results from responding to a tax notice. */

global class NoticeFinanceModel extends ErrorResult
{

    // The Unique Id of the Finance Model
    global Integer id { get; set; }

    // The unique ID of the the tax notice associated with the the finance detail
    global Integer noticeId { get; set; }

    // The date of the notice
    global DateTime noticeDate { get; set; }

    // The due date of the notice
    global DateTime dueDate { get; set; }

    // The sequential number of the notice
    global String noticeNumber { get; set; }

    // The amount of tax due on the notice
    global Decimal taxDue { get; set; }

    // The amound of penalty listed on the notice
    global Decimal penalty { get; set; }

    // The amount of interest listed on the notice
    global Decimal interest { get; set; }

    // The amount of credits listed on the notice
    global Decimal credits { get; set; }

    // The amount of tax abated on the notice
    global Decimal taxAbated { get; set; }

    // The amount of customer penalty on the notice
    global Decimal customerPenalty { get; set; }

    // The amount of customer interest on the notice
    global Decimal customerInterest { get; set; }

    // The amount of CSP Fee Refund on the notice
    global Decimal cspFeeRefund { get; set; }

    // The name of the file attached to the finance detail
    global String fileName { get; set; }

    // The ResourceFileId of the finance detail attachment
    global Integer resourceFileId { get; set; }

    // The date when this record was created.
    global DateTime createdDate { get; set; }

    // The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    // The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    // The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }

    // An attachment to the finance detail
    global ResourceFileUploadRequestModel attachmentUploadRequest { get; set; }
}
