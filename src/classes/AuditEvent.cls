/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/*  */

global class AuditEvent
{

    // 
    global Integer auditEventId { get; set; }

    // 
    global Integer transactionId { get; set; }

    // 
    global Blob auditEventLevelId { get; set; }

    // 
    global DateTime eventTimestamp { get; set; }

    // 
    global String source { get; set; }

    // 
    global String summary { get; set; }

    // 
    global String details { get; set; }
}
