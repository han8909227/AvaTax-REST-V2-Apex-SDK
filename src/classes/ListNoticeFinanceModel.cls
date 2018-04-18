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

global class ListNoticeFinanceModel extends ErrorResult
{
    global List<NoticeFinanceModel> result { get; set; }
}
