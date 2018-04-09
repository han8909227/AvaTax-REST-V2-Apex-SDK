/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents communication between Avalara and the company regarding the processing of a tax notice. */

global class NoticeCommentModel extends ErrorResult
{

    /// The unique ID number of this notice.
    global Integer? id { get; set; }

    /// The ID of the notice this comment is attached too
    global Integer noticeId { get; set; }

    /// The date this comment was entered
    global DateTime? date { get; set; }

    /// TaxNoticeComment
    global String comment { get; set; }

    /// TaxNoticeCommentUserId
    global Integer? commentUserId { get; set; }

    /// TaxNoticeCommentUserName
    global String commentUserName { get; set; }

    /// taxNoticeCommentTypeId
    global Integer? commentTypeId { get; set; }

    /// taxNoticeCommentType
    global CommentType commentType { get; set; }

    /// TaxNoticeCommentLink
    global String commentLink { get; set; }

    /// TaxNoticeFileName
    global String taxNoticeFileName { get; set; }

    /// resourceFileId
    global Int64? resourceFileId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// An attachment to the detail
    global ResourceFileUploadRequestModel attachmentUploadRequest { get; set; }
}
