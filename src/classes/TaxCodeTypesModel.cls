/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Information about Avalara-defined tax code types.
    // This list is used when creating tax codes and tax rules. */

global class TaxCodeTypesModel extends ErrorResult
{

    // The list of Avalara-defined tax code types.
    global Dictionary<string, string> types { get; set; }
}
