/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Identifies all nexus that match a particular tax form */

global class NexusByTaxFormModel extends ErrorResult
{

    /// The code of the tax form that was requested
    global String formCode { get; set; }

    /// The company ID of the company that was used to load the companyNexus array. If this value is null, no company data was loaded.
    global Integer? companyId { get; set; }

    /// A list of all Avalara-defined nexus that are relevant to this tax form
    global List<NexusModel> nexusDefinitions { get; set; }

    /// A list of all currently-defined company nexus that are related to this tax form
    global List<NexusModel> companyNexus { get; set; }
}
