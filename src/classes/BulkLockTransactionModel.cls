public class BulkLockTransactionModel extends ErrorResult
    {
        /// <summary>
        /// List of documents to lock
        /// </summary>
        public List<Long> documentIds { get; set; }

        /// <summary>
        /// The lock status to set for the documents designated in this API
        /// </summary>
        public Boolean isLocked { get; set; }
}