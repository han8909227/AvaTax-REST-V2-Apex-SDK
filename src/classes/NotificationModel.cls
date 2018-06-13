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

global class NotificationModel extends ErrorResult
{

    // The unique id of the notification.
    global Integer id { get; set; }

    // The unique ID number of the account that received this notification.
    global Integer accountId { get; set; }

    // If this notification was tied to a specific company, this will be the
    // unique ID number of the company that received the notification. Notifications that
    // are tied to accounts will have a `NULL` value for `companyId`.
    global Integer companyId { get; set; }

    // The type name of object referred to by this notification, if any.
    // 
    // Some notifications may include information about a related data object.
    // 
    // For example, if this notification was related to a nexus declaration, the `referenceObject` field would
    // be `Nexus` and the `referenceId` field would be the unique ID number of that nexus.
    global String referenceObject { get; set; }

    // The unique reference Id number of the object referred to by this notification, if any.
    // 
    // Some notifications may include information about a related data object.
    // 
    // For example, if this notification was related to a nexus declaration, the `referenceObject` field would
    // be `Nexus` and the `referenceId` field would be the unique ID number of that nexus.
    global Integer referenceId { get; set; }

    // The severity level of the notification.
    global NotificationSeverityLevel severityLevelId { get; set; }

    // The category of this notification.
    // 
    // Notification categories are a useful way to group related notifications together. Category names may change 
    // over time.
    // 
    // For Example: "Backdated Transactions" or "Nexus Jurisdiction Alerts", or "Certificate Expiration".
    global String category { get; set; }

    // The topic of this notification.
    // 
    // Notification topics contain information about the notification. They are a summary of the issue and can
    // help you decide what type of action to take.
    // 
    // For Example: "Backdated Transactions" or "Nexus Jurisdiction Alerts", or "Certificate Expiration".
    global String topic { get; set; }

    // The message for this notification. This is a friendly description of the notification and any relevant
    // information that can help you decide what kind of action, if any, to take in response.
    global String message { get; set; }

    // If this notification object requires user action to resolve, this value will be set to true.
    global Boolean needsAction { get; set; }

    // If there is a specific action suggested by this notification, this is the name of the action.
    // 
    // An action is a suggested next step such as "Review Your Tax Profile." If an action is suggested,
    // you should give the viewer a hyperlink to the location referred to by `actionLink` and give the
    // hyperlink the name `actionName`.
    global String actionName { get; set; }

    // If there is a specific action suggested by this notification, this is the URL of the action.
    // 
    // An action is a suggested next step such as "Review Your Tax Profile." If an action is suggested,
    // you should give the viewer a hyperlink to the location referred to by `actionLink` and give the
    // hyperlink the name `actionName`.
    global String actionLink { get; set; }

    // If there is a specific action suggested by this notification, and if this action is requested
    // by a specific due date, this value will be the due date for the action.
    // 
    // An action is a suggested next step such as "Review Your Tax Profile." If an action is suggested,
    // you should give the viewer a hyperlink to the location referred to by `actionLink` and give the
    // hyperlink the name `actionName`. 
    // 
    // For actions that have deadlines, such as "Confirm your tax registration before filing", this value 
    // will be set to the deadline date for the action. Otherwise, this value will be null.
    global DateTime actionDueDate { get; set; }

    // When a user has finished reviewing a notification, they may opt to dismiss it by calling the
    // `DismissNotification` API. This API marks the notification as dismissed, and dismissed notifications
    // will generally not appear in most user interfaces.
    global Boolean dismissed { get; set; }

    // If this notification has been dismissed, this indicates the unique ID number of the user that
    // dismissed the notification.
    global Integer dismissedByUserId { get; set; }

    // If this notification has been dismissed, this indicates the timestamp (in UTC time) when the user
    // dismissed the notification.
    global DateTime dismissedDate { get; set; }

    // If this notification is time sensitive, this is the latest date when the notification should be
    // displayed to the user.
    global DateTime expireDate { get; set; }

    // The unique ID number of the user who created the notification.
    global Integer createdUserId { get; set; }

    // The UTC timestamp of the time when this notification was created.
    global DateTime createdDate { get; set; }

    // The unique ID number of the user who most recently modified this notification.
    global Integer modifiedUserId { get; set; }

    // The UTC timestamp of the time when this notification was last modified.
    global DateTime modifiedDate { get; set; }
}
