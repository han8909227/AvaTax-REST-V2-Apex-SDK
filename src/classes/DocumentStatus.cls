/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Document Status */

global enum DocumentStatus
{

    // Temporary document not saved (SalesOrder, PurchaseOrder)
    Temporary,

    // Saved document (SalesInvoice or PurchaseInvoice) ready to be posted
    Saved,

    // A posted document (not committed)
    Posted,

    // A posted document that has been committed
    Committed,

    // A Committed document that has been cancelled
    Cancelled,

    // A document that has been adjusted
    Adjusted,

    // A document which is in Queue status and processed later
    Queued,

    // A document which is Pending for Approval
    PendingApproval,

    // Any status (for searching)
    Any,

}
