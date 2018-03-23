global enum TaxOverrideTypeId
{
    /// No override
    None,

    /// Tax was overriden by the client
    TaxAmount,

    /// Entity exemption was ignored (e.g. item was consumed)
    Exemption,

    /// Only the tax date was overriden
    TaxDate,

    /// To support Consumer Use Tax
    AccruedTaxAmount,

    /// Derive the taxable amount from the tax amount
    DeriveTaxable

}