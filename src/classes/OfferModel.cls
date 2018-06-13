/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Gets the response for the offer request */

global class OfferModel extends ErrorResult
{

    // Id of the transaction
    global String id { get; set; }

    // Message indicating what action took place
    global String offerMessage { get; set; }
}
