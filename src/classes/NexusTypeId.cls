/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Describes the different types of statuses which describe an entity (company). */

global enum NexusTypeId
{
    // Indicates no nexus
    None,

    // Indicates the entity is voluntarily collecting tax (default)
        //  
        //  This has replaced Collect
    SalesOrSellersUseTax,

    // Indicates the entity is required to collect tax in the state
        //  
        //  This has replaced Legal
    SalesTax,

    // Indicates the entity is registered as a Volunteer in an SST state.
        //  Only your SST administrator may set this option.
    SSTVolunteer,

    // Indicates the entity is registered as a Non-Volunteer in an SST state.
        //  Only your SST administrator may set this option.
    SSTNonVolunteer

}
