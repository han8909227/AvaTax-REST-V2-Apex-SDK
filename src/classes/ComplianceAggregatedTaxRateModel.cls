/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A model for aggregated rates. */

global class ComplianceAggregatedTaxRateModel extends ErrorResult
{

    // The compontent rate.
    global Decimal rate { get; set; }

    // The stack rate based on the aggregation method.
    global Decimal stackRate { get; set; }

    // The date this rate is starts to take effect.
    global DateTime effectiveDate { get; set; }

    // The date this rate is no longer active.
    global DateTime endDate { get; set; }

    // The tax type of the rate.
    global String taxTypeId { get; set; }

    // The rate type of the rate.
    global String rateTypeId { get; set; }
}
