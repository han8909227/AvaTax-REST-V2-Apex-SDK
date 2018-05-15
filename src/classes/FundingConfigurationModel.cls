/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Status of an Avalara Managed Returns funding configuration for a company */

global class FundingConfigurationModel extends ErrorResult
{

    // CompanyID
    global Integer companyId { get; set; }

    // Domain
    global String systemType { get; set; }

    // Recipient
    global String currencyField { get; set; }

    // Sender
    global Boolean isFundingSetup { get; set; }

    // DocumentKey
    global String fundingMethod { get; set; }

    // LastPolled
    global DateTime lastUpdated { get; set; }
}
