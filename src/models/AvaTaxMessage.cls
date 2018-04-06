/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Informational or warning messages returned by AvaTax with a transaction

global class AvaTaxMessage
{

    /// A brief summary of what this message tells us
    global String summary { get; set; }

    /// Detailed information that explains what the summary provided
    global String details { get; set; }

    /// Information about what object in your request this message refers to
    global String refersTo { get; set; }

    /// A category that indicates how severely this message affects the results
    global String severity { get; set; }

    /// The name of the code or service that generated this message
    global String source { get; set; }
}
