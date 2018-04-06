/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// An account user who is permitted to use AvaTax.

global class UserModel extends ErrorResult
{

    /// The unique ID number of this user.
    global Integer id { get; set; }

    /// The unique ID number of the account to which this user belongs.
    global Integer accountId { get; set; }

    /// If this user is locked to one company (and its children), this is the unique ID number of the company to which this user belongs.
    global Integer? companyId { get; set; }

    /// The username which is used to log on to the AvaTax website, or to authenticate against API calls.
    global String userName { get; set; }

    /// The first or given name of the user.
    global String firstName { get; set; }

    /// The last or family name of the user.
    global String lastName { get; set; }

    /// The email address to be used to contact this user. If the user has forgotten a password, an email can be sent to this email address with information on how to reset this password.
    global String email { get; set; }

    /// The postal code in which this user resides.
    global String postalCode { get; set; }

    /// The security level for this user.
    global SecurityRoleId securityRoleId { get; set; }

    /// The status of the user's password.
    global PasswordStatusId? passwordStatus { get; set; }

    /// True if this user is currently active.
    global Boolean? isActive { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
