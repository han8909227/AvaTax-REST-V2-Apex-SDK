/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* User Entitlement Model */

global class UserEntitlementModel extends ErrorResult
{

    /// List of API names and categories that this user is permitted to access
    global List<String> permissions { get; set; }

    /// What access privileges does the current user have to see companies?
    global CompanyAccessLevel accessLevel { get; set; }

    /// The identities of all companies this user is permitted to access
    global Integer companies { get; set; }
}
