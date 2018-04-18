/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a service that this account has subscribed to. */

global class ListSubscriptionModel extends ErrorResult
{
    global List<SubscriptionModel> result { get; set; }
}
