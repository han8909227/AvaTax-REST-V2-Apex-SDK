/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* NoticeRootCause Model */

global class NoticeRootCauseDetailModel extends ErrorResult
{

    /// The unique ID number of this filing frequency.
    global Integer id { get; set; }

    /// TaxNoticeId
    global Integer noticeId { get; set; }

    /// TaxNoticeRootCauseId
    global Integer taxNoticeRootCauseId { get; set; }

    /// The description name of this root cause
    global String description { get; set; }
}