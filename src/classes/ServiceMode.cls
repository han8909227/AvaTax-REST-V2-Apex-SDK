/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Service modes for tax calculation when using an AvaLocal server. */

global enum ServiceMode
{
    // Automatically use local or remote (default)
    Automatic,

    // Local server only
    Local,

    // Remote server only
    Remote

}
