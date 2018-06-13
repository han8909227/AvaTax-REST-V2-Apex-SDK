/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The tax region jurisdiction model. */

global class TaxRegionJurisdictionModel extends ErrorResult
{

    // The id of the jurisdiction.
    global Integer jurisdictionId { get; set; }

    // The id of the tax region.
    global Integer taxRegionId { get; set; }

    // The id of the jurisdiction level.
    global Integer jurisdictionLevelId { get; set; }

    // The rock name.
    global String rockName { get; set; }

    // The report level.
    global Integer reportLevel { get; set; }

    // The state assigned code.
    global String stateAssignedCode { get; set; }

    // The id of the tax authority.
    global Integer taxAuthorityId { get; set; }

    // The signature code.
    global String signatureCode { get; set; }

    // The date in which this tax region jurisdiction starts to take effect.
    global DateTime effectiveDate { get; set; }

    // The date in which this tax region jurisdiction stops to take effect.
    global DateTime endDate { get; set; }
}
