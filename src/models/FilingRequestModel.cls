/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents a commitment to file a tax return on a recurring basis.
    /// Only used if you subscribe to Avalara Returns.

global class FilingRequestModel extends ErrorResult
{

    /// The unique ID number of this filing request.
    global Int64? id { get; set; }

    /// The unique ID number of the company to which this filing request belongs.
    global Integer companyId { get; set; }

    /// The current status of this request
    global FilingRequestStatus? filingRequestStatusId { get; set; }

    /// The data model object of the request
    global FilingRequestDataModel data { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
