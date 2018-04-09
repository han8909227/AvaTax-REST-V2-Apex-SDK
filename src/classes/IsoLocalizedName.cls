/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a language-specific localized name of a particular geographic entity such
    // as a country or a region. */

global class IsoLocalizedName
{

    /// The two-character alphanumeric code identifying the language in which this name is used.
    // 
    // Note that languageAlpha2Code and language3AlphaCode refer to the same language.
    global String languageAlpha2Code { get; set; }

    /// The three-character alphanumeric code identifying the language in which this name is used.
    // 
    // Note that languageAlpha2Code and language3AlphaCode refer to the same language.
    global String languageAlpha3Code { get; set; }

    /// The name of this geographic entity as known in this language.
    global String name { get; set; }
}
