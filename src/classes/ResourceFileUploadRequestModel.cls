global class ResourceFileUploadRequestModel extends ErrorResult
    {
        /// <summary>
        /// This stream contains the bytes of the file being uploaded.
        /// </summary>
        global String[] content { get; set; }

        /// <summary>
        /// The username adding the file
        /// </summary>
        global String username { get; set; }

        /// <summary>
        /// The account ID to which this file will be attached.
        /// </summary>
        global Long accountId { get; set; }

        /// <summary>
        /// The company ID to which this file will be attached.
        /// </summary>
        global Long companyId { get; set; }

        /// <summary>
        /// The original name of this file.
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// The resource type ID of this file.
        /// </summary>
        global Long resourceFileTypeId { get; set; }

        /// <summary>
        /// Length of the file in bytes.
        /// </summary>
        global Long length { get; set; }
}