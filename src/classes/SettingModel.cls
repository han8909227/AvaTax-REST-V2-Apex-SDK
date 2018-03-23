global class SettingModel extends ErrorResult
{
    /// The unique ID number of this setting.
    global Long id { get; set; }

    /// The unique ID number of the company this setting refers to.
    global Long companyId { get; set; }

    /// A user-defined "set" containing this name-value pair.
    global String setsm { get; set; }

    /// A user-defined "namesm" for this name-value pair.
    global String namesm { get; set; }

    /// The value of this name-value pair.
    global String value { get; set; }
}