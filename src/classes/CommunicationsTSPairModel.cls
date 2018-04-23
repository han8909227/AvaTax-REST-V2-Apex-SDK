/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a transaction/service type pair for telecommunications tax */

global class CommunicationsTSPairModel extends ErrorResult
{

    // The numeric Id of the transaction type.
    global Integer transactionTypeId { get; set; }

    // The numeric Id of the service type.
    global Integer serviceTypeId { get; set; }

    // The name of the transaction type.
    global String TransactionType { get; set; }

    // The name of the service type.
    global String ServiceType { get; set; }

    // The description of the transaction/service type pair.
    global String description { get; set; }

    // List of the parameters (among Charge, Minutes and Lines) that will be used for calculation for this T/S pair.
    global List<String> requiredParameters { get; set; }
}
