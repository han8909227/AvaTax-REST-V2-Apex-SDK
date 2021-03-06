global class TaxOverrideModel extends ErrorResult
{
    /// Identifies the type of tax override
    global TaxOverrideType type { get; set; }

    /// Indicates a total override of the calculated tax on the document. AvaTax will distribute
    /// the override across all the lines.
    ///  
    /// Tax will be distributed on a best effort basis. It may not always be possible to override all taxes. Please consult
    /// your account manager for information about overrides.
    global Decimal taxAmount { get; set; }

    /// The override tax date to use
    ///  
    /// This is used when the tax has been previously calculated
    /// as in the case of a layaway, return or other reason indicated by the Reason element.
    /// If the date is not overridden, then it should be set to the same as the DocDate.
    global Date taxDate { get; set; }

    /// This provides the reason for a tax override for audit purposes. It is required for types 2-4.
    ///  
    /// Typical reasons include:
    /// "Return"
    /// "Layaway"
    global String reason { get; set; }

}