/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Information about a previously created transaction */

global class AuditTransactionModel extends ErrorResult
{

    /// Unique ID number of the company that created this transaction
    global Integer? companyId { get; set; }

    /// Reconstructed API request/response
    global ReconstructedApiRequestResponseModel reconstructed { get; set; }

    /// Server timestamp, in UTC, of the date/time when the original transaction was created
    global DateTime? serverTimestamp { get; set; }

    /// Length of time the original API call took
    global DateTime? serverDuration { get; set; }

    /// api call status
    global ApiCallStatus? apiCallStatus { get; set; }

    /// Original API request/response
    global OriginalApiRequestResponseModel original { get; set; }
}
