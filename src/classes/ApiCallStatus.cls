/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Indicates what level of auditing information is available for a transaction */

global enum ApiCallStatus
{
    // If the original api call is availabe on S3
    OriginalApiCallAvailable,

    // if the original api call is not available, reconstructed api call should always be available
    ReconstructedApiCallAvailable,

    // Any other api call status
    AnyField

}
