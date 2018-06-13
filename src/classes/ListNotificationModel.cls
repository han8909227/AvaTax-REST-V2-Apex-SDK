/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a single notification.
    // 
    // A notification is a message from Avalara that may have relevance to your business. You may want
    // to regularly review notifications and then dismiss them when you are certain that you have addressed
    // any relevant concerns raised by this notification.
    // 
    // An example of a notification would be a message about new software, or a change to AvaTax that may
    // affect you, or a potential issue with your company's tax profile. */

global class ListNotificationModel extends ErrorResult
{
    global List<NotificationModel> result { get; set; }
}
