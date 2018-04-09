/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Tax Notice FilingType Model */

global class NoticeFilingTypeModel extends ErrorResult
{

    /// The unique ID number of this tax notice customer type.
    global Integer id { get; set; }

    /// The description name of this tax authority type.
    global String description { get; set; }

    /// A flag if the type is active
    global Boolean? activeFlag { get; set; }

    /// sort order of the types
    global Integer? sortOrder { get; set; }
}
