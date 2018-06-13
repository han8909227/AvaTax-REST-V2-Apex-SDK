/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Provides detailed information about an API call. */

global class AuditModel extends ErrorResult
{

    // The transaction id
    global Integer transactionId { get; set; }

    // The account id
    global Integer accountId { get; set; }

    // The user id
    global Integer userId { get; set; }

    // The IP address
    global String ipAddress { get; set; }

    // The machine name
    global String machineName { get; set; }

    // The client name
    global String clientName { get; set; }

    // The client version
    global String clientVersion { get; set; }

    // The adapter name
    global String adapterName { get; set; }

    // The adapter version
    global String adapterVersion { get; set; }

    // The server name
    global String serverName { get; set; }

    // The server version
    global String serverVersion { get; set; }

    // The reference id
    global Integer referenceId { get; set; }

    // The severity level id
    global Blob severityLevelId { get; set; }

    // The server timestamp
    global DateTime serverTimestamp { get; set; }

    // The server duration
    global Integer serverDuration { get; set; }

    // The service name
    global String serviceName { get; set; }

    // The operation
    global String operation { get; set; }

    // The reference code
    global String referenceCode { get; set; }

    // The error message
    global String errorMessage { get; set; }

    // The audit message
    global String auditMessage { get; set; }

    // The load balancer duration
    global Integer lbDuration { get; set; }

    // The record count
    global Integer recordCount { get; set; }

    // The reference authorization
    global String referenceAuthorization { get; set; }

    // Whether or not it is queued
    global Boolean isQueued { get; set; }

    // The number of calls to the database
    global Integer databaseCallCount { get; set; }

    // The time to make a call to the database
    global String databaseCallDuration { get; set; }

    // The time to receive a response from a remote server
    global String remoteCallDuration { get; set; }

    // Audit events
    global List<AuditEvent> events { get; set; }

    // The request url
    global String requestUrl { get; set; }

    // The request body
    global String requestBody { get; set; }

    // The resposne status
    global Integer responseStatus { get; set; }

    // The response body
    global String responseBody { get; set; }

    // The remote calls
    global List<AuditModel> remoteCalls { get; set; }
}
