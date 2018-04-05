global class ExemptionReasonModel extends ErrorResult
{
    /// <summary>
    /// A unique ID number representing this exemption reason.
    /// </summary>
    global Long id { get; set; }

    /// <summary>
    /// A friendly name describing this exemption reason.
    /// </summary>
    global String name { get; set; }
}