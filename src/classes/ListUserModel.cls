/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* An account user who is permitted to use AvaTax. */

global class ListUserModel extends ErrorResult
{
    global List<UserModel> result { get; set; }
}
