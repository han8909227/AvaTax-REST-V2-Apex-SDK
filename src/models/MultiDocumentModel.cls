/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// A MultiDocument transaction represents a sale or purchase that occurred between more than two companies.
    /// 
    /// A traditional transaction requires exactly two parties: a seller and a buyer. MultiDocument transactions can
    /// involve a marketplace of vendors, each of which contributes some portion of the final transaction. Within
    /// a MultiDocument transaction, each individual buyer and seller pair are matched up and converted to a separate
    /// document. This separation of documents allows each seller to file their taxes separately.

global class MultiDocumentModel extends ErrorResult
{

    /// The unique ID number of this MultiDocument object.
    global Int64? id { get; set; }

    /// The unique ID number of the AvaTax customer account that created this MultiDocument object.
    global Integer? accountId { get; set; }

    /// The transaction code of the MultiDocument transaction.
    /// 
    /// All individual transactions within this MultiDocument object will have this code as a prefix.
    global String code { get; set; }

    /// Indicates the type of MultiDocument transaction. Common values are:
    /// 
    /// * SalesOrder - An estimate that is not permanently recorded
    /// * SalesInvoice - An invoice that can be reported on a tax return
    /// 
    /// For more information about document types, see [DocumentType](https://developer.avalara.com/api-reference/avatax/rest/v2/models/enums/DocumentType/)
    global DocumentType? type { get; set; }

    /// The user ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was created.
    global DateTime? createdDate { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }

    /// A separate document will exist for each unique combination of buyer and seller in this MultiDocument transaction.
    global List<TransactionModel> documents { get; set; }
}
