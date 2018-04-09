/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A model for displaying report task metadata */

global class ReportModel extends ErrorResult
{

    /// The unique identifier of the report task
    global Integer id { get; set; }

    /// The ID of the account the reported transactions are from
    global Integer accountId { get; set; }

    /// The ID of the company the reported transactions are from
    global Integer companyId { get; set; }

    /// The type of the report: ExportDocumentLine, etc.
    global String reportType { get; set; }

    /// The parametes used to build the report
    global ReportParametersModel parameters { get; set; }

    /// The current status of the report building task
    global String status { get; set; }

    /// The size of the report file, if available
    global Integer size { get; set; }

    /// The format of the report file
    global String format { get; set; }

    /// The name of the report file, if available
    global String file { get; set; }

    /// The time when the report task was initiated
    global DateTime createdDate { get; set; }

    /// The Id of the user who initiated this task
    global Integer createdUserId { get; set; }

    /// The userName of the user who initiated the report task
    global String createdUser { get; set; }

    /// The time when the report was finished building, if completed
    global DateTime completedDate { get; set; }
}
