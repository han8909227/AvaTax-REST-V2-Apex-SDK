/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Severity of message */

global enum SeverityLevel
{

    /// Operation succeeded
    Success,

    /// Warnings occured, operation succeeded
    Warning,

    /// Errors occured, operation failed
    Error,

    /// Unexpected exceptions occurred, operation failed
    Exception,

}
