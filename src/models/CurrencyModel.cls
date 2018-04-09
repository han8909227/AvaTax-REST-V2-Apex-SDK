/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an ISO 4217 currency code used for designating the currency of a transaction. */

global class CurrencyModel extends ErrorResult
{

    /// The ISO 4217 currency code for this currency.
    global String code { get; set; }

    /// A friendly human-readable name representing this currency.
    global String description { get; set; }

    /// The number of decimal digits to use when formatting a currency value for display.
    global Byte? decimalDigits { get; set; }
}
