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

global class NoticeRootCauseModel extends ErrorResult
{

    /// The unique ID number of this notice RootCause.
    global Integer id { get; set; }

    /// The description name of this notice RootCause
    global String description { get; set; }

    /// Defines if the RootCause is active
    global Boolean isActive { get; set; }

    /// The sort order of this RootCause
    global Integer sortOrder { get; set; }
}
