global class ParameterModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this property.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The category grouping of this parameter. When your user interface displays a large number of parameters, they should
        /// be grouped by their category value.
        /// </summary>
        global String category { get; set; }

        /// <summary>
        /// The name of the property. To use this property, add a field on the `parameters` object of a `/api/v2/transactions/create` call.
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// The data type of the property.
        /// </summary>
        global ParameterBagDataType dataType { get; set; }

        /// <summary>
        /// Help text to be shown to the user when they are filling out this parameter. Help text may include HTML links to additional
        /// content with more information about a parameter.
        /// </summary>
        global String helpText { get; set; }

        /// <summary>
        /// A list of service types to which this parameter applies.
        /// </summary>
        global List<String> serviceTypes { get; set; }

        /// <summary>
        /// The prompt you should use when displaying this parameter to a user. For example, if your user interface displays a
        /// parameter in a text box, this is the label you should use to identify that text box.
        /// </summary>
        global String prompt { get; set; }

        /// <summary>
        /// If your user interface permits client-side validation of parameters, this string is a regular expression you can use
        /// to validate the user's data entry prior to submitting a tax request.
        /// </summary>
        global String regularExpression { get; set; }
}