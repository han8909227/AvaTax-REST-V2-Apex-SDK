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

global class ListNoticeCommentModel extends ErrorResult
{
    global List<NoticeCommentModel> result { get; set; }
}
