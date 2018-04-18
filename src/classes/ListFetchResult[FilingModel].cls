/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/*  */

global class ListFetchResult[FilingModel] extends ErrorResult
{
    global List<FetchResult[FilingModel]> result { get; set; }
}
