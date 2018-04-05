global virtual class CustomerModel extends ErrorResult
    {
        /// <summary>
        /// Unique ID number of this customer.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The unique ID number of the AvaTax company that recorded this customer.
        /// </summary>
        global Long companyId { get; set; }

        /// <summary>
        /// The unique code identifying this customer. Must be unique within your company.
        /// 
        /// This code should be used in the `customerCode` field of any call that creates or adjusts a transaction
        /// in order to ensure that all exemptions that apply to this customer are correctly considered.
        /// </summary>
        global String customerCode { get; set; }

        /// <summary>
        /// A customer-configurable alternate ID number for this customer. You may set this value to match any
        /// other system that would like to reference this customer record.
        /// </summary>
        global String alternateId { get; set; }

        /// <summary>
        /// A friendly name identifying this customer.
        /// </summary>
        global String name { get; set; }

        /// <summary>
        /// Indicates the "Attn:" component of the address for this customer, if this customer requires mailings to be shipped 
        /// to the attention of a specific person or department name.
        /// </summary>
        global String attnName { get; set; }

        /// <summary>
        /// First line of the street address of this customer.
        /// </summary>
        global String line1 { get; set; }

        /// <summary>
        /// Second line of the street address of this customer.
        /// </summary>
        global String line2 { get; set; }

        /// <summary>
        /// City component of the street address of this customer.
        /// </summary>
        global String city { get; set; }

        /// <summary>
        /// Postal Code / Zip Code component of the address of this customer.
        /// </summary>
        global String postalCode { get; set; }

        /// <summary>
        /// The main phone number for this customer.
        /// </summary>
        global String phoneNumber { get; set; }

        /// <summary>
        /// The fax phone number for this customer, if any.
        /// </summary>
        global String faxNumber { get; set; }

        /// <summary>
        /// The main email address for this customer.
        /// </summary>
        global String emailAddress { get; set; }

        /// <summary>
        /// The name of the main contact person for this customer.
        /// </summary>
        global String contactName { get; set; }

        /// <summary>
        /// Date when this customer last executed a transaction.
        /// </summary>
        global DateTime lastTransaction { get; set; }

        /// <summary>
        /// The date when this record was created.
        /// </summary>
        global DateTime createdDate { get; set; }

        /// <summary>
        /// The date/time when this record was last modified.
        /// </summary>
        global DateTime modifiedDate { get; set; }

        /// <summary>
        /// Two character ISO 3166 county code for the country component of the address of this customer.
        /// </summary>
        global String country { get; set; }

        /// <summary>
        /// Two or three character ISO 3166 region, province, or state name of the address of this customer.
        /// </summary>
        global String region { get; set; }

        /// <summary>
        /// True if this customer record is specifically used for bill-to purposes.
        /// </summary>
        global Boolean isBill { get; set; }

        /// <summary>
        /// True if this customer record is specifically used for ship-to purposes.
        /// </summary>
        global Boolean isShip { get; set; }

        /// <summary>
        /// For customers in the United States, this field is the federal taxpayer ID number. For businesses, this is 
        /// a Federal Employer Identification Number. For individuals, this will be a Social Security Number.
        /// </summary>
        global String taxpayerIdNumber { get; set; }

        /// <summary>
        /// A list of exemption certficates that apply to this customer. You can fetch this data by specifying 
        /// `$include=certificates` when calling a customer fetch API.
        /// </summary>
        global List<CertificateModel> certificates { get; set; }
}