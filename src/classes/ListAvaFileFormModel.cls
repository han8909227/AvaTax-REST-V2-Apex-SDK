/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents information about a tax form known to Avalara */

global class ListAvaFileFormModel extends ErrorResult
{
    global List<AvaFileFormModel> result { get; set; }
}
