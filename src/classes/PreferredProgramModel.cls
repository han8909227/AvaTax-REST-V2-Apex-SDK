/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A preferred program is a customs and/or duty program that can be used to handle cross-border transactions.
    // Customers who sign up for a preferred program may obtain better terms for their customs and duty payments.
    // 
    // To indicate that your company has signed up for a preferred program, specify the `code` value from this
    // object as the value for the `AvaTax.LC.PreferredProgram` parameter in your transaction. */

global class PreferredProgramModel extends ErrorResult
{

    // The unique ID number representing this preferred program.
    global Integer id { get; set; }

    // A code that identifies this preferred program. To select this program, specify this code
    // value in the `AvaTax.LC.PreferredProgram` parameter.
    global String code { get; set; }

    // The ISO 3166 country code for the origin permitted by this program
    global String originCountry { get; set; }

    // The ISO 3166 country code for the destination permitted by this program
    global String destinationCountry { get; set; }

    // The earliest date for which this preferred program can be used in AvaTax. If `null`, this preferred program
    // is valid for all dates earlier than `endDate`.
    global DateTime effectiveDate { get; set; }

    // The latest date for which this preferred program can be used in AvaTax. If `null`, this preferred program
    // is valid for all dates later than `effectiveDate`.
    global DateTime endDate { get; set; }
}
