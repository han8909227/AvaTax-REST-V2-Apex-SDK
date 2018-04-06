/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Tax Authority Model

global class NoticeCustomerFundingOptionModel extends ErrorResult
{

    /// The unique ID number of this tax notice customer FundingOption.
    global Integer id { get; set; }

    /// The description name of this tax authority FundingOption.
    global String description { get; set; }

    /// A flag if the FundingOption is active
    global Boolean? activeFlag { get; set; }

    /// sort order of the FundingOptions
    global Integer? sortOrder { get; set; }
}
