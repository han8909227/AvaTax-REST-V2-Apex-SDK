public class CommunicationsTSPairModel extends ErrorResult
    {
        /// <summary>
        /// The numeric Id of the transaction type.
        /// </summary>
        public Long transactionTypeId { get; set; }

        /// <summary>
        /// The numeric Id of the service type.
        /// </summary>
        public Long serviceTypeId { get; set; }

        /// <summary>
        /// The name of the transaction type.
        /// </summary>
        public String TransactionType { get; set; }

        /// <summary>
        /// The name of the service type.
        /// </summary>
        public String ServiceType { get; set; }

        /// <summary>
        /// The description of the transaction/service type pair.
        /// </summary>
        public String description { get; set; }

        /// <summary>
        /// List of the parameters (among Charge, Minutes and Lines) that will be used for calculation for this T/S pair.
        /// </summary>
        public List<String> requiredParameters { get; set; }
}