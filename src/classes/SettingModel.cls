/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* This object is used to keep track of custom information about a company.
    // A setting can refer to any type of data you need to remember about this company object.
    // When creating this object, you may define your own "set", "name", and "value" parameters.
    // To define your own values, please choose a "set" name that begins with "X-" to indicate an extension. */

global class SettingModel extends ErrorResult
{

    /// The unique ID number of this setting.
    global Integer id { get; set; }

    /// The unique ID number of the company this setting refers to.
    global Integer companyId { get; set; }

    /// A user-defined "set" containing this name-value pair.
    global String set { get; set; }

    /// A user-defined "name" for this name-value pair.
    global String name { get; set; }

    /// The value of this name-value pair.
    global String value { get; set; }
}
