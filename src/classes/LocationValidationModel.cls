/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Tells you whether this location object has been correctly set up to the local jurisdiction's standards */

global class LocationValidationModel extends ErrorResult
{

    /// True if the location has a value for each jurisdiction-required setting.
    // The user is required to ensure that the values are correct according to the jurisdiction; this flag
    // does not indicate whether the taxing jurisdiction has accepted the data you have provided.
    global Boolean settingsValidated { get; set; }

    /// A list of settings that must be defined for this location
    global List<LocationQuestionModel> requiredSettings { get; set; }
}
