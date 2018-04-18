/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a tax rule that changes the behavior of Avalara's tax engine for certain products in certain jurisdictions. */

global class ListTaxRuleModel extends ErrorResult
{
    global List<TaxRuleModel> result { get; set; }
}
