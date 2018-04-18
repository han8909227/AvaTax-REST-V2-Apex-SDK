/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Indicates whether this address refers to a person or an business */

global enum AddressTypeId
{

    // A business location, for example a store, warehouse, or office.
    Location,

    // A person's address who performs sales tasks for the company remotely from an office.
    Salesperson,

    // This location is a marketplace vendor that handles transactions on behalf of the company.
        //  When you select `Marketplace` as the address type for a location, you must then choose either
        //  `SellersRemitsTax` or `MarketplaceRemitsTax` to indicate which business entity is responsible
        //  for collecting and remitting tax for this location.
    Marketplace,

}
