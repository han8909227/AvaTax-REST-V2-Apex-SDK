/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A list of possible AvaFile Form Types. */

global enum FormTypeId
{

    /// Denotes the form type is Sales and Use Tax
    SalesAndUse,

    /// Denotes the form type is Sales Tax only
    Sales,

    /// Denotes the form type is Sellers Use Tax only
    SellersUse,

    /// Denotes the form type is Lodging Tax only
    Lodging,

    /// Denotes the form type is Sales and Lodging Tax
    SalesAndLodging,

    /// Denotes the form type is Consumer Use Tax only
    ConsumerUse,

    /// Denotes the form type is Resort and Rental Tax
    ResortAndRental,

    /// Denotes the form type is Tourist and Rental Tax
    TouristAndRental,

    /// Denotes the form type is Prepayment
    Prepayment,

}
