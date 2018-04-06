/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Information about questions that the local jurisdictions require for each location

global class LocationQuestionModel extends ErrorResult
{

    /// The unique ID number of this location setting type
    global Integer id { get; set; }

    /// This is the prompt for this question
    global String question { get; set; }

    /// If additional information is available about the location setting, this contains descriptive text to help
    /// you identify the correct value to provide in this setting.
    global String description { get; set; }

    /// If available, this regular expression will verify that the input from the user is in the expected format.
    global String regularExpression { get; set; }

    /// If available, this is an example value that you can demonstrate to the user to show what is expected.
    global String exampleValue { get; set; }

    /// Indicates which jurisdiction requires this question
    global String jurisdictionName { get; set; }

    /// Indicates which type of jurisdiction requires this question
    global JurisdictionType? jurisdictionType { get; set; }

    /// Indicates the country that this jurisdiction belongs to
    global String jurisdictionCountry { get; set; }

    /// Indicates the state, region, or province that this jurisdiction belongs to
    global String jurisdictionRegion { get; set; }
}
