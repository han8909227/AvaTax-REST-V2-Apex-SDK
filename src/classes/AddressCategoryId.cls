/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The type of address represented by this object */

global enum AddressCategoryId
{

    // Address refers to a storefront location
    Storefront,

    // Address refers to a main office of this company
    MainOffice,

    // Address refers to a warehouse or other non-public location
    Warehouse,

    // Address refers to a location for a single salesperson
    Salesperson,

    // Address is a type not reflected in the other lists
    Other,

}
