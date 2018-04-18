/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a letter received from a tax authority regarding tax filing.
    // These letters often have the warning "Notice" printed at the top, which is why
    // they are called "Notices". */

global class ListNoticeModel extends ErrorResult
{
    global List<NoticeModel> result { get; set; }
}
