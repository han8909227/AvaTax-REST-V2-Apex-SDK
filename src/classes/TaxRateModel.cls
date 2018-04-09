/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Contains information about the general tangible personal property sales tax rates for this jurisdiction.
    // 
    // This rate is calculated by making assumptions about the tax calculation process. It does not account for:
    // 
    // * Sourcing rules, such as origin-and-destination based transactions.
    // * Product taxability rules, such as different tax rates for different product types.
    // * Nexus declarations, where some customers are not obligated to collect tax in specific jurisdictions.
    // * Tax thresholds and rate differences by amounts.
    // * And many more custom use cases.
    // 
    // To upgrade to a fully-featured and accurate tax process that handles these scenarios correctly, please
    // contact Avalara to upgrade to AvaTax! */

global class TaxRateModel extends ErrorResult
{

    /// The total sales tax rate for general tangible personal property sold at a retail point of presence
    // in this jurisdiction on this date.
    global Decimal totalRate { get; set; }

    /// The list of individual rate elements for general tangible personal property sold at a retail
    // point of presence in this jurisdiction on this date.
    global List<RateModel> rates { get; set; }
}
