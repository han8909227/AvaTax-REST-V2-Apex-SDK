/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Verify that a MultiDocument object matches the information in your accounting system.
    // 
    // If all attributes of the MultiDocument object match the values in your request, the
    // MultiDocument object will be moved to the document status `Posted`.
    // 
    // For more information on document status, see [DocumentStatus](https://developer.avalara.com/api-reference/avatax/rest/v2/models/enums/DocumentStatus/). */

global class VerifyMultiDocumentModel extends ErrorResult
{

    // Represents the unique code of this MultiDocument transaction.
    // 
    // A MultiDocument transaction is uniquely identified by its `accountId`, `code`, and `type`.
    global String code { get; set; }

    // Represents the document type of this MultiDocument transaction. For more information about
    // document types, see [DocumentType](https://developer.avalara.com/api-reference/avatax/rest/v2/models/enums/DocumentType/).
    // 
    // A MultiDocument transaction is uniquely identified by its `accountId`, `code`, and `type`.
    global DocumentType typeField { get; set; }

    // Set this value if you wish to verify a match between `verifyTransactionDate` and
    // the `documentDate` value on the transaction recorded in AvaTax.
    // 
    // If you leave this field empty, we will skip verification for this field.
    global DateTime verifyTransactionDate { get; set; }

    // Set this value if you wish to verify a match between `verifyTotalAmount` and
    // the `totalAmount` value on the transaction recorded in AvaTax.
    // 
    // If you leave this field empty, we will skip verification for this field.
    global Decimal verifyTotalAmount { get; set; }

    // Set this value if you wish to verify a match between `verifyTotalTax` and
    // the `totalTax` value on the transaction recorded in AvaTax.
    // 
    // If you leave this field empty, we will skip verification for this field.
    global Decimal verifyTotalTax { get; set; }
}
