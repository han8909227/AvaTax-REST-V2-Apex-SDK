/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The date filter type for report
    //  "RD" for Reporting Date, "DD" for Document Date, "TD" for Tax Date, "PD" for Payment Date */

global enum ReportDateFilter
{

    /// The date when the transaction is posted
    DocumentDate,

    /// The date when the transaction is paid for
    PaymentDate,

    /// The date when the transaction is added to report
    ReportingDate,

    /// The date when the transaction is being taxed
    TaxDate,

}
