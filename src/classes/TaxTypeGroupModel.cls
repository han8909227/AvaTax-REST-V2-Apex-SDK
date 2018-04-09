/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a tax type group */

global class TaxTypeGroupModel extends ErrorResult
{

    /// The unique ID number of this tax type group.
    global Integer id { get; set; }

    /// The unique human readable Id of this tax type group.
    global String taxTypeGroup { get; set; }

    /// The description of this tax type group.
    global String description { get; set; }
}
