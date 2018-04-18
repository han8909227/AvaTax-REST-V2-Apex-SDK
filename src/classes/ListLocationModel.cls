/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A location where this company does business.
    // Some jurisdictions may require you to list all locations where your company does business. */

global class ListLocationModel extends ErrorResult
{
    global List<LocationModel> result { get; set; }
}
