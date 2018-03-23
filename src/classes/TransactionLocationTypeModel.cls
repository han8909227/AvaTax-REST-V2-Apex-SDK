global class TransactionLocationTypeModel extends ErrorResult
    {
        /// <summary>
        /// Location type ID for this location type in transaction
        /// </summary>
        global Long documentLocationTypeId { get; set; }

        /// <summary>
        /// Transaction ID
        /// </summary>
        global Long documentId { get; set; }

        /// <summary>
        /// Address ID for the transaction
        /// </summary>
        global Long documentAddressId { get; set; }

        /// <summary>
        /// Location type code
        /// </summary>
        global String locationTypeCode { get; set; }

}