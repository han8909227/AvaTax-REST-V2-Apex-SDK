/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents the answer to one local jurisdiction question for a location.

global class LocationSettingModel extends ErrorResult
{

    /// The unique ID number of the location question answered.
    global Integer? questionId { get; set; }

    /// The name of the question
    global String questionName { get; set; }

    /// The answer the user provided.
    global String value { get; set; }
}
