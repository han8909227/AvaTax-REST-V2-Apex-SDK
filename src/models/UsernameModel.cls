/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Information about a username.

global class UsernameModel extends ErrorResult
{

    /// The username.
    global String username { get; set; }

    /// Whether or not the username is taken.
    global Boolean? taken { get; set; }
}
