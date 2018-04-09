/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Tax Notice Status Model */

global class NoticeStatusModel extends ErrorResult
{

    /// The unique ID number of this tax authority type.
    global Integer id { get; set; }

    /// The description name of this tax authority type.
    global String description { get; set; }

    /// True if a tax notice in this status is considered 'open' and has more work expected to be done before it is closed.
    global Boolean? isOpen { get; set; }

    /// If a list of status values is to be displayed in a dropdown, they should be displayed in this numeric order.
    global Integer? sortOrder { get; set; }
}
