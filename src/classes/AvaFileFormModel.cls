/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents information about a tax form known to Avalara */

global class AvaFileFormModel extends ErrorResult
{

    // Unique Id of the form
    global Integer id { get; set; }

    // Name of the file being returned
    global String returnName { get; set; }

    // Name of the submitted form
    global String formName { get; set; }

    // A description of the submitted form
    global String description { get; set; }

    // The date this form starts to take effect
    global DateTime effDate { get; set; }

    // The date the form finishes to take effect
    global DateTime endDate { get; set; }

    // State/Province/Region where the form is submitted for
    global String region { get; set; }

    // The country this form is submitted for
    global String country { get; set; }

    // The type of the form being submitted
    global FormTypeId formTypeId { get; set; }

    // 
    global FilingOptionTypeId filingOptionTypeId { get; set; }

    // The type of the due date
    global DueDateTypeId dueDateTypeId { get; set; }

    // Due date
    global Integer dueDay { get; set; }

    // 
    global DueDateTypeId efileDueDateTypeId { get; set; }

    // The date by when the E-filing should be submitted
    global Integer efileDueDay { get; set; }

    // The time of day by when the E-filing should be submitted
    global DateTime efileDueTime { get; set; }

    // Whether the customer has discount
    global Boolean hasVendorDiscount { get; set; }

    // The way system does the rounding
    global RoundingTypeId roundingTypeId { get; set; }

    // The outlet type of the form
    global OutletTypeId outletTypeId { get; set; }
}
