/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Model with options for adding a new filing calendar */

global class ListCycleAddOptionModel extends ErrorResult
{
    global List<CycleAddOptionModel> result { get; set; }
}
