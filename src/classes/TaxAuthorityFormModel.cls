/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a form that can be filed with a tax authority. */

global class TaxAuthorityFormModel extends ErrorResult
{

    // The unique ID number of the tax authority.
    global Integer taxAuthorityId { get; set; }

    // The form name of the form for this tax authority.
    global String formName { get; set; }
}
