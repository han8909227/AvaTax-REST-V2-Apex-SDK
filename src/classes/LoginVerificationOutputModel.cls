/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* This is the output model coming from skyscraper services */

global class LoginVerificationOutputModel extends ErrorResult
{

    /// The job Id returned from skyscraper
    global Integer jobId { get; set; }

    /// The operation status of the job
    global String operationStatus { get; set; }

    /// The message returned from the job
    global String message { get; set; }

    /// Indicates if the login was successful
    global Boolean loginSuccess { get; set; }
}
