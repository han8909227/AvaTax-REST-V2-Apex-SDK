/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents information about a type of telecommunications transaction */

global class CommunicationsTransactionTypeModel extends ErrorResult
{

    // The numeric Id of the transaction type.
    global Integer transactionTypeId { get; set; }

    // The name of the transaction type.
    [JsonProperty(PropertyName = "AvaTax.Communications.TransactionType")]
    global String TransactionType { get; set; }
}
