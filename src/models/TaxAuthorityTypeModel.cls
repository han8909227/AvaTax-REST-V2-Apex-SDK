/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Tax Authority Type Model */

global class TaxAuthorityTypeModel extends ErrorResult
{

    /// The unique ID number of this tax Authority customer type.
    global Integer id { get; set; }

    /// The description name of this tax authority type.
    global String description { get; set; }

    /// Tax Authority Group
    global String taxAuthorityGroup { get; set; }
}
