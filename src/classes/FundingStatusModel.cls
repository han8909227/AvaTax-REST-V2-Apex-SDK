/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Status of an Avalara Managed Returns funding configuration for a company */

global class FundingStatusModel extends ErrorResult
{

    // The unique ID number of this funding request
    global Integer requestId { get; set; }

    // SubledgerProfileID
    global Integer subledgerProfileID { get; set; }

    // CompanyID
    global String companyID { get; set; }

    // Domain
    global String domain { get; set; }

    // Recipient
    global String recipient { get; set; }

    // Sender
    global String sender { get; set; }

    // DocumentKey
    global String documentKey { get; set; }

    // DocumentType
    global String documentType { get; set; }

    // DocumentName
    global String documentName { get; set; }

    // MethodReturn
    global FundingESignMethodReturn methodReturn { get; set; }

    // Status
    global String status { get; set; }

    // ErrorMessage
    global String errorMessage { get; set; }

    // LastPolled
    global DateTime lastPolled { get; set; }

    // LastSigned
    global DateTime lastSigned { get; set; }

    // LastActivated
    global DateTime lastActivated { get; set; }

    // TemplateRequestId
    global Integer templateRequestId { get; set; }
}
