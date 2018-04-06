/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents a service or a subscription type.

global class SubscriptionTypeModel extends ErrorResult
{

    /// The unique ID number of this subscription type.
    global Integer? id { get; set; }

    /// The friendly name of the service this subscription type represents.
    global String description { get; set; }
}
