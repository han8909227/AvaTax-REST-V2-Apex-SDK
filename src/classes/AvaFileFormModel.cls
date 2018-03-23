public class AvaFileFormModel extends ErrorResult
    {
        /// <summary>
        /// Unique Id of the form
        /// </summary>
        public Long id { get; set; }

        /// <summary>
        /// Name of the file being returned
        /// </summary>
        public String returnName { get; set; }

        /// <summary>
        /// Name of the submitted form
        /// </summary>
        public String formName { get; set; }

        /// <summary>
        /// A description of the submitted form
        /// </summary>
        public String description { get; set; }

        /// <summary>
        /// The date this form starts to take effect
        /// </summary>
        public DateTime effDate { get; set; }

        /// <summary>
        /// The date the form finishes to take effect
        /// </summary>
        public DateTime endDate { get; set; }

        /// <summary>
        /// State/Province/Region where the form is submitted for
        /// </summary>
        public String region { get; set; }

        /// <summary>
        /// The country this form is submitted for
        /// </summary>
        public String country { get; set; }

        /// <summary>
        /// The type of the form being submitted
        /// </summary>
        public Long formTypeId { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public Long filingOptionTypeId { get; set; }

        /// <summary>
        /// The type of the due date
        /// </summary>
        public Long dueDateTypeId { get; set; }

        /// <summary>
        /// Due date
        /// </summary>
        public Long dueDay { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public Long efileDueDateTypeId { get; set; }

        /// <summary>
        /// The date by when the E-filing should be submitted
        /// </summary>
        public Long efileDueDay { get; set; }

        /// <summary>
        /// The time of day by when the E-filing should be submitted
        /// </summary>
        public DateTime efileDueTime { get; set; }

        /// <summary>
        /// Whether the customer has discount
        /// </summary>
        public Boolean hasVendorDiscount { get; set; }

        /// <summary>
        /// The way system does the rounding
        /// </summary>
        public Long roundingTypeId { get; set; }
}