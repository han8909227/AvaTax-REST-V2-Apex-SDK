/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a list of statuses of returns available in skyscraper */

global class SkyscraperStatusModel extends ErrorResult
{

    /// The specific name of the returns available in skyscraper
    global String name { get; set; }

    /// The tax form codes available to file through skyscrper
    global List<String> taxFormCodes { get; set; }

    /// The country of the returns
    global String country { get; set; }

    /// They Scraper type
    global ScraperType? scraperType { get; set; }

    /// Indicates if the return is currently available
    global Boolean? isAvailable { get; set; }

    /// The expected response time of the call
    global String expectedResponseTime { get; set; }

    /// Message on the returns
    global String message { get; set; }

    /// A list of required fields to file
    global List<requiredFilingCalendarDataFieldModel> requiredFilingCalendarDataFields { get; set; }
}
