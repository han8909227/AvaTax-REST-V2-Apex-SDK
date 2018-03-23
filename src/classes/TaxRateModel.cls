global class TaxRateModel extends ErrorResult
    {
        /// <summary>
        /// The total sales tax rate for general tangible personal property sold at a retail point of presence
        /// in this jurisdiction on this date.
        /// </summary>
        global Decimal totalRate { get; set; }

        /// <summary>
        /// The list of individual rate elements for general tangible personal property sold at a retail
        /// point of presence in this jurisdiction on this date.
        /// </summary>
        global List<RateModel> rates { get; set; }

}