/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Message object */

global class ErrorDetail
{

    /// Name of the error or message.
    global ErrorCodeId code { get; set; }

    /// Unique ID number referring to this error or message.
    global Integer number { get; set; }

    /// Concise summary of the message, suitable for display in the caption of an alert box.
    global String message { get; set; }

    /// A more detailed description of the problem referenced by this error message, suitable for display in the contents area of an alert box.
    global String description { get; set; }

    /// Indicates the SOAP Fault code, if this was related to an error that corresponded to AvaTax SOAP v1 behavior.
    global String faultCode { get; set; }

    /// URL to help for this message
    global String helpLink { get; set; }

    /// Item the message refers to, if applicable. This is used to indicate a missing or incorrect value.
    global String refersTo { get; set; }

    /// Severity of the message
    global SeverityLevel severity { get; set; }
}
