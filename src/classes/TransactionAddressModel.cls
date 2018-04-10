/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* An address used within this transaction. */

global class TransactionAddressModel extends ErrorResult
{

    // The unique ID number of this address.
    global Integer id { get; set; }

    // The unique ID number of the document to which this address belongs.
    global Integer transactionId { get; set; }

    // The boundary level at which this address was validated.
    global BoundaryLevel boundaryLevel { get; set; }

    // The first line of the address.
    global String line1 { get; set; }

    // The second line of the address.
    global String line2 { get; set; }

    // The third line of the address.
    global String line3 { get; set; }

    // The city for the address.
    global String city { get; set; }

    // The ISO 3166 region code. E.g., the second part of ISO 3166-2.
    global String region { get; set; }

    // The postal code or zip code for the address.
    global String postalCode { get; set; }

    // The ISO 3166 country code
    global String country { get; set; }

    // The unique ID number of the tax region for this address.
    global Integer taxRegionId { get; set; }

    // Latitude for this address
    global String latitude { get; set; }

    // Longitude for this address
    global String longitude { get; set; }
}
