/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The tax rate model. */

global class ComplianceTaxRateModel extends ErrorResult
{

    // The unique id of the rate.
    global Integer id { get; set; }

    // The tax rate.
    global Decimal rate { get; set; }

    // The id of the jurisdiction.
    global Integer jurisdictionId { get; set; }

    // The id of the tax region.
    global Integer taxRegionId { get; set; }

    // The date this rate is starts to take effect.
    global DateTime effectiveDate { get; set; }

    // The date this rate is no longer active.
    global DateTime endDate { get; set; }

    // The rate type.
    global String rateTypeId { get; set; }

    // The tax type.
    global String taxTypeId { get; set; }

    // The name of the tax.
    global String taxName { get; set; }

    // The unit of basis.
    global Integer unitOfBasisId { get; set; }

    // The rate type tax type mapping id.
    global Integer rateTypeTaxTypeMappingId { get; set; }
}
