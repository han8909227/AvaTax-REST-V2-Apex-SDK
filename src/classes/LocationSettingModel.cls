global class LocationSettingModel extends ErrorResult
{
    /// The unique ID number of the location question answered.
    global Long questionId { get; set; }

    /// The answer the user provided.
    global String value { get; set; }
}