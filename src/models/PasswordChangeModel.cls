/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Password Change Model

global class PasswordChangeModel extends ErrorResult
{

    /// Old Password
    global String oldPassword { get; set; }

    /// New Password
    global String newPassword { get; set; }
}
