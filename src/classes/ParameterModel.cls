/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* An extra property that can change the behavior of tax transactions. */

global class ParameterModel extends ErrorResult
{

    /// The unique ID number of this property.
    global Integer id { get; set; }

    /// The category grouping of this parameter. When your user interface displays a large number of parameters, they should
    /// be grouped by their category value.
    global String category { get; set; }

    /// The name of the property. To use this property, add a field on the `parameters` object of a `/api/v2/transactions/create` call.
    global String name { get; set; }

    /// The data type of the property.
    global ParameterBagDataType dataType { get; set; }

    /// Help text to be shown to the user when they are filling out this parameter. Help text may include HTML links to additional
    /// content with more information about a parameter.
    global String helpText { get; set; }

    /// A list of service types to which this parameter applies.
    global List<String> serviceTypes { get; set; }

    /// The prompt you should use when displaying this parameter to a user. For example, if your user interface displays a
    /// parameter in a text box, this is the label you should use to identify that text box.
    global String prompt { get; set; }

    /// If your user interface permits client-side validation of parameters, this string is a regular expression you can use
    /// to validate the user's data entry prior to submitting a tax request.
    global String regularExpression { get; set; }
}
