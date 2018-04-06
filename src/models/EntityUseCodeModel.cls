/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Represents a code describing the intended use for a product that may affect its taxability

global class EntityUseCodeModel extends ErrorResult
{

    /// The Avalara-recognized entity use code for this definition
    global String code { get; set; }

    /// The name of this entity use code
    global String name { get; set; }

    /// Text describing the meaning of this use code
    global String description { get; set; }

    /// A list of countries where this use code is valid
    global List<String> validCountries { get; set; }
}
