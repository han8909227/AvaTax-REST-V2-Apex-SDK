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

}
