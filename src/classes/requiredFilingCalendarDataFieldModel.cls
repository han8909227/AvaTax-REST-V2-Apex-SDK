/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a verification request using Skyscraper for a company */

global class requiredFilingCalendarDataFieldModel extends ErrorResult
{

    // Region of the verification request
    global String name { get; set; }

    // Username that we are using for verification
    global String description { get; set; }
}
