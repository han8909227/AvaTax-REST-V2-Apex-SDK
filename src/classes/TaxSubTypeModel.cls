/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a tax subtype */

global class TaxSubTypeModel extends ErrorResult
{

    // The unique ID number of this tax sub-type.
    global Integer id { get; set; }

    // The unique human readable Id of this tax sub-type.
    global String taxSubType { get; set; }

    // The description of this tax sub-type.
    global String description { get; set; }

    // The upper level group of tax types.
    global String taxTypeGroup { get; set; }
}
