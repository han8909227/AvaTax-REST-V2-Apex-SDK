/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Cycle Safe Expiration results. */

global class CycleExpireModel extends ErrorResult
{

    /// Whether or not the filing calendar can be expired.
    /// e.g. if user makes end date of a calendar earlier than latest filing, this would be set to false.
    global Boolean success { get; set; }

    /// The message to present to the user if expiration is successful or unsuccessful.
    global String message { get; set; }

    /// A list of options for expiring the filing calendar.
    global List<CycleExpireOptionModel> cycleExpirationOptions { get; set; }
}
