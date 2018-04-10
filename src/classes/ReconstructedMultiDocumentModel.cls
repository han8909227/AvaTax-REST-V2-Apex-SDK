/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Contains information about the original API request and response that created
    // a MultiDocument object. */

global class ReconstructedMultiDocumentModel extends ErrorResult
{

    // The original request that was used to create a MultiDocument object.
    global CreateMultiDocumentModel request { get; set; }
}
