global class ErrorInfo
    {
        /// <summary>
        /// Type of error that occurred
        /// </summary>
                
        global String code { get; set; }

        /// <summary>
        /// Short one-line message to summaryize what went wrong
        /// </summary>
        global String message { get; set; }

        /// <summary>
        /// What object or service caused the error?
        /// </summary>
        global ErrorTargetCode target { get; set; }

        /// <summary>
        /// Array of detailed error messages
        /// </summary>
        global List<ErrorDetail> details { get; set; }
}