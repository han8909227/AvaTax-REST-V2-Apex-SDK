/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Filing Request Status types */

global enum FilingRequestStatus
{

    // Customer is building a request for a new filing calendar
    New,

    // Customer’s information validated before submitting to go live. All required information as per state and form selection is entered.
    Validated,

    // Customer submitted a request for a new filing calendar
    Pending,

    // Filing calender is active
    Active,

    // Customer requested to deactivate filing calendar
    PendingStop,

    // Filing calendar is inactive
    Inactive,

    // This indicates that there is a new change request.
    ChangeRequest,

    // This indicates that the change request was approved.
    RequestApproved,

    // This indicates that compliance rejected the request.
    RequestDenied,

}
