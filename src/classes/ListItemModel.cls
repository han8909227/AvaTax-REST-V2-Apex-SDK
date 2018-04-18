/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an item in your company's product catalog. */

global class ListItemModel extends ErrorResult
{
    global List<ItemModel> result { get; set; }
}
