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

global class FilingAnswerModel extends ErrorResult
{

    /// The ID number for a filing question
    global Integer filingQuestionId { get; set; }

    /// The value of the answer for the filing question identified by filingQuestionId
    global Dictionary<string, string> answer { get; set; }
}
