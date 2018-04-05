public class CompanyAddress
    {
        /// <summary>
        /// Address Line1
        /// </summary>
        public String line { get; set; }

        /// <summary>
        /// City
        /// </summary>
        public String city { get; set; }

        /// <summary>
        /// Two character ISO 3166 Region code for this company's primary business location.
        /// </summary>
        public String region { get; set; }

        /// <summary>
        /// Two character ISO 3166 Country code for this company's primary business location.
        /// </summary>
        public String country { get; set; }

        /// <summary>
        /// Postal Code
        /// </summary>
        public String postalCode { get; set; }
}