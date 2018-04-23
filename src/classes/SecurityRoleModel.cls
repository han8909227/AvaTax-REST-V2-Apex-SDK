/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a single security role. */

global class SecurityRoleModel extends ErrorResult
{

    // The unique ID number of this security role.
    global Integer id { get; set; }

    // A description of this security role
    global String description { get; set; }
}
