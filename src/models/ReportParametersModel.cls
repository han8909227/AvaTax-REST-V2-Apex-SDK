/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The output model for report parameter definitions */

global class ReportParametersModel extends ErrorResult
{

    /// The start date filter used for your report
    global DateTime? startDate { get; set; }

    /// The end date filter used for your report
    global DateTime? endDate { get; set; }

    /// The country filter used for your report
    global String country { get; set; }

    /// The state filter used for your report
    global String state { get; set; }

    /// The date type filter used for your report
    global String dateFilter { get; set; }

    /// The doc type filter used for your report
    global String docType { get; set; }

    /// The date format used for your report
    global String dateFormat { get; set; }

    /// The culture used your report
    global String culture { get; set; }

    /// The currency code used for your report
    global String currencyCode { get; set; }
}
