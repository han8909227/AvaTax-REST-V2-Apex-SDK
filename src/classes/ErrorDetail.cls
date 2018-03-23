global class ErrorDetail
    {
        /// <summary>
        /// Name of the error or message.
        /// </summary>        
        global ErrorCodeId1 errorCode1 { get; set; }
        
        global ErrorCodeId2 errorCode2 { get; set; }

        /// <summary>
        /// Unique ID number referring to this error or message.
        /// </summary>
        global Integer errorNumber { get; set; }

        /// <summary>
        /// Concise summary of the message, suitable for display in the caption of an alert box.
        /// </summary>
        global String message { get; set; }

        /// <summary>
        /// A more detailed description of the problem referenced by this error message, suitable for display in the contents area of an alert box.
        /// </summary>
        global String description { get; set; }

        /// <summary>
        /// Indicates the SOAP Fault code, if this was related to an error that corresponded to AvaTax SOAP v1 behavior.
        /// </summary>
        global String faultCode { get; set; }

        /// <summary>
        /// URL to help for this message
        /// </summary>
        global String helpLink { get; set; }

        /// <summary>
        /// Item the message refers to, if applicable. This is used to indicate a missing or incorrect value.
        /// </summary>
        global String refersTo { get; set; }

        /// <summary>
        /// Severity of the message
        /// </summary>
        global SeverityLevel severity { get; set; }
}