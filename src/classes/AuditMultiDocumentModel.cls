/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Information about a previously created MultiDocument transaction */

global class AuditMultiDocumentModel extends ErrorResult
{

    /// Reconstructed API request/response pair that can be used to adjust or re-create this MultiDocument transaction.
    global ReconstructedMultiDocumentModel reconstructed { get; set; }

    /// Represents the unique code of this MultiDocument transaction.
    // 
    // A MultiDocument transaction is uniquely identified by its `accountId`, `code`, and `type`.
    global String code { get; set; }

    /// Represents the document type of this MultiDocument transaction. For more information about
    // document types, see [DocumentType](https://developer.avalara.com/api-reference/avatax/rest/v2/models/enums/DocumentType/).
    // 
    // A MultiDocument transaction is uniquely identified by its `accountId`, `code`, and `type`.
    global DocumentType type { get; set; }

    /// Server timestamp, in UTC, of the date/time when the original transaction was created
    global DateTime serverTimestamp { get; set; }

    /// Length of time the original API call took
    global DateTime serverDuration { get; set; }

    /// api call status
    global ApiCallStatus apiCallStatus { get; set; }

    /// Original API request/response
    global OriginalApiRequestResponseModel original { get; set; }
}
