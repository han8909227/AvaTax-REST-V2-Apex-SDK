/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents one configuration setting for this account */

global class ListAccountConfigurationModel extends ErrorResult
{
    global List<AccountConfigurationModel> result { get; set; }
}
