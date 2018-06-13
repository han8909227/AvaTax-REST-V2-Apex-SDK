/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Severity level of a notification. */

global enum NotificationSeverityLevel
{
    // Low priority notification, Default.
    Neutral,

    // Medium priority notification.
    Advisory,

    // High priority notification.
    Blocking,

    // A completed notification
    Complete

}
