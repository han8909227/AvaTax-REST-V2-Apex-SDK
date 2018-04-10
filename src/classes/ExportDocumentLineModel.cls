/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* An input model for executing a report detailed to the document line level */

global class ExportDocumentLineModel extends ErrorResult
{

    // The output format: CSV, XML, etc. If no preference, report will be in CSV format.
    global ReportFormat format { get; set; }

    // The start date filter for report execution. If no date provided, same date of last month will be used as the startDate.
    global DateTime startDate { get; set; }

    // The end date filter for report execution. If no date provided, today's date will be used as the endDate.
    global DateTime endDate { get; set; }

    // The transactions in the country you wish to run a report:
    // use "ALL" for all countries
    // use "ALL Non-US" for all international countries
    // or use a single 2-char ISO country code
    global String country { get; set; }

    // The state associated with the transactions you wish to run a report on: use "ALL" for all states.
    global String state { get; set; }

    // The type of date to filter your transactions
    global ReportDateFilter dateFilter { get; set; }

    // The transaction type you want to run a report on
    global ReportDocType docType { get; set; }

    // Format of dates in your rendered report. Example: "MM/dd/yyyy"
    global String dateFormat { get; set; }

    // In which culture your report is produced with. Example: "en-US"
    global String culture { get; set; }

    // The currency your report is displayed in. Example: "USD"
    global String currencyCode { get; set; }
}
