/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Cycle Safe Expiration results. */

global class FilingsCheckupAuthorityModel extends ErrorResult
{

    // Unique ID of the tax authority
    global Integer taxAuthorityId { get; set; }

    // Location Code of the tax authority
    global String locationCode { get; set; }

    // Name of the tax authority
    global String taxAuthorityName { get; set; }

    // Type Id of the tax authority
    global Integer taxAuthorityTypeId { get; set; }

    // Jurisdiction Id of the tax authority
    global Integer jurisdictionId { get; set; }

    // Amount of tax collected in this tax authority
    global Decimal tax { get; set; }

    // Tax Type collected in the tax authority
    global String taxTypeId { get; set; }

    // Suggested forms to file due to tax collected
    global List<FilingsCheckupSuggestedFormModel> suggestedForms { get; set; }
}
