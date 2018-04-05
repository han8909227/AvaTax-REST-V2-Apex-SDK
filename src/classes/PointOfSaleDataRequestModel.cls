global class PointOfSaleDataRequestModel extends ErrorResult
    {
        /// <summary>
        /// A unique code that references a company within your account.
        /// </summary>
        global String companyCode { get; set; }

        /// <summary>
        /// The date associated with the response content. Default is current date. This field can be used to backdate or postdate the response content.
        /// </summary>
        global DateTime documentDate { get; set; }

        /// <summary>
        /// The format of your response. Formats include JSON, CSV, and XML.
        /// </summary>
        global PointOfSaleFileType responseType { get; set; }

        /// <summary>
        /// A list of tax codes to include in this point-of-sale file. If no tax codes are specified, response will include all distinct tax codes associated with the Items within your company.
        /// </summary>
        global List<String> taxCodes { get; set; }

        /// <summary>
        /// A list of location codes to include in this point-of-sale file. If no location codes are specified, response will include all locations within your company.
        /// </summary>
        global List<String> locationCodes { get; set; }

        /// <summary>
        /// Set this value to true to include Juris Code in the response.
        /// </summary>
        global Boolean includeJurisCodes { get; set; }

        /// <summary>
        /// A unique code assoicated with the Partner you may be working with. If you are not working with a Partner or your Partner has not provided you an ID, leave null.
        /// </summary>
        global PointOfSalePartnerId partnerId { get; set; }
}