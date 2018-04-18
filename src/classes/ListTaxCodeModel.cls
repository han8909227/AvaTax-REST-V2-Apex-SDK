/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a tax code that can be applied to items on a transaction.
    // A tax code can have specific rules for specific jurisdictions that change the tax calculation behavior. */

global class ListTaxCodeModel extends ErrorResult
{
    global List<TaxCodeModel> result { get; set; }
}
