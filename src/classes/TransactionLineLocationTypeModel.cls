global class TransactionLineLocationTypeModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this line location address model
        /// </summary>
        global Long documentLineLocationTypeId { get; set; }

        /// <summary>
        /// The unique ID number of the document line associated with this line location address model
        /// </summary>
        global Long documentLineId { get; set; }

        /// <summary>
        /// The address ID corresponding to this model
        /// </summary>
        global Long documentAddressId { get; set; }

        /// <summary>
        /// The location type code corresponding to this model
        /// </summary>
        global String locationTypeCode { get; set; }

}