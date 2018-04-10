/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Rebuild a set of filings. */

global class RebuildFilingsModel extends ErrorResult
{

    // Set this value to true in order to rebuild the filings.
    global Boolean rebuild { get; set; }
}
