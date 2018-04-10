/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a commitment to file a tax return on a recurring basis.
    // Only used if you subscribe to Avalara Returns. */

global class FilingRequestDataModel extends ErrorResult
{

    // The company return ID if requesting an update.
    global Integer companyReturnId { get; set; }

    // DEPRECATED - The legacy return name of the requested calendar.
    global String returnName { get; set; }

    // The Avalara standard tax form code of the tax form for this filing calendar. The first two characters of the tax form code
    // are the ISO 3166 country code of the country that issued this form.
    global String taxFormCode { get; set; }

    // The filing frequency of the request
    global FilingFrequencyId filingFrequencyId { get; set; }

    // State registration ID of the company requesting the filing calendar.
    global String registrationId { get; set; }

    // The months of the request
    global Integer months { get; set; }

    // The type of tax to report on this return.
    global MatchingTaxType taxTypeId { get; set; }

    // Location code of the request
    global String locationCode { get; set; }

    // Filing cycle effective date of the request
    global DateTime effDate { get; set; }

    // Filing cycle end date of the request
    global DateTime endDate { get; set; }

    // Flag if the request is a clone of a current filing calendar
    global Boolean isClone { get; set; }

    // The two character ISO 3166 country code of the country that issued the tax form for this filing calendar.
    global String country { get; set; }

    // The two or three character ISO 3166 code of the region / state / province that issued the tax form for this filing calendar.
    global String region { get; set; }

    // The tax authority id of the return
    global Integer taxAuthorityId { get; set; }

    // The tax authority name on the return
    global String taxAuthorityName { get; set; }

    // Filing question answers
    global List<FilingAnswerModel> answers { get; set; }
}
