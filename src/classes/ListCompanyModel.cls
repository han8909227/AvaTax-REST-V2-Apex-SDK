/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A company or business entity. */

global class ListCompanyModel extends ErrorResult
{
    global List<CompanyModel> result { get; set; }
}
