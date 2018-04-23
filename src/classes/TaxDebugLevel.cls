/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Indicates the level of detail requested from a tax API call */

global enum TaxDebugLevel
{
    // User requests the normal level of debug information when creating a tax transaction
    Normal,

    // User requests additional diagnostic information when creating a tax transaction
    Diagnostic

}
