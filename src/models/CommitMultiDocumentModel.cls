/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Commit this MultiDocument object so that all transactions within it can be reported on a tax filing.

global class CommitMultiDocumentModel extends ErrorResult
{

    /// Represents the unique code of this MultiDocument transaction.
    /// 
    /// A MultiDocument transaction is uniquely identified by its `accountId`, `code`, and `type`. ///
    global String code { get; set; }

    /// Represents the document type of this MultiDocument transaction. For more information about
    /// document types, see [DocumentType](https://developer.avalara.com/api-reference/avatax/rest/v2/models/enums/DocumentType/).
    /// 
    /// A MultiDocument transaction is uniquely identified by its `accountId`, `code`, and `type`.
    global DocumentType? type { get; set; }

    /// Set this value to be `true` to commit this transaction.
    /// 
    /// Committing a transaction allows it to be reported on a tax filing. Uncommitted transactions will not be reported.
    global Boolean commit { get; set; }
}
