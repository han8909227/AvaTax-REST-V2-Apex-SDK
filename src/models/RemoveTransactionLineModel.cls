/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Model to specify lines to be removed

global class RemoveTransactionLineModel extends ErrorResult
{

    /// company code
    global String companyCode { get; set; }

    /// document code for the transaction to add lines
    global String transactionCode { get; set; }

    /// document type
    global DocumentType? documentType { get; set; }

    /// List of lines to be added
    global List<String> lines { get; set; }

    /// ption to renumber lines after removal. After renumber, the line number becomes: "1", "2", "3", ...
    global Boolean? renumber { get; set; }
}
