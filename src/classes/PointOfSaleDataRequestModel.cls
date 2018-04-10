/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Point-of-Sale Data Request Model */

global class PointOfSaleDataRequestModel extends ErrorResult
{

    // A unique code that references a company within your account.
    global String companyCode { get; set; }

    // The date associated with the response content. Default is current date. This field can be used to backdate or postdate the response content.
    global DateTime documentDate { get; set; }

    // The format of your response. Formats include JSON, CSV, and XML.
    global PointOfSaleFileType responseType { get; set; }

    // A list of tax codes to include in this point-of-sale file. If no tax codes are specified, response will include all distinct tax codes associated with the Items within your company.
    global List<String> taxCodes { get; set; }

    // A list of location codes to include in this point-of-sale file. If no location codes are specified, response will include all locations within your company.
    global List<String> locationCodes { get; set; }

    // Set this value to true to include Juris Code in the response.
    global Boolean includeJurisCodes { get; set; }

    // A unique code assoicated with the Partner you may be working with. If you are not working with a Partner or your Partner has not provided you an ID, leave null.
    global PointOfSalePartnerId partnerId { get; set; }
}
