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

    /// 
    global Integer? id { get; set; }

    /// 
    global Integer? noticeId { get; set; }

    /// 
    global DateTime? noticeDate { get; set; }

    /// 
    global DateTime? dueDate { get; set; }

    /// 
    global String noticeNumber { get; set; }

    /// 
    global Decimal? taxDue { get; set; }

    /// 
    global Decimal? penalty { get; set; }

    /// 
    global Decimal? interest { get; set; }

    /// 
    global Decimal? credits { get; set; }

    /// 
    global Decimal? taxAbated { get; set; }

    /// 
    global Decimal? customerPenalty { get; set; }

    /// 
    global Decimal? customerInterest { get; set; }

    /// 
    global Decimal? cspFeeRefund { get; set; }

    /// resourceFileId
    global String fileName { get; set; }

    /// resourceFileId
    global Int64? resourceFileId { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// An attachment to the finance detail
    global ResourceFileUploadRequestModel attachmentUploadRequest { get; set; }
}
