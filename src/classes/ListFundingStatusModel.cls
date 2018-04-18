/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Status of an Avalara Managed Returns funding configuration for a company */

global class ListFundingStatusModel extends ErrorResult
{
    global List<FundingStatusModel> result { get; set; }
}