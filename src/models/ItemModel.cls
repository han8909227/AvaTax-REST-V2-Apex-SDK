/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an item in your company's product catalog. */

global class ItemModel extends ErrorResult
{

    /// The unique ID number of this item.
    global Int64 id { get; set; }

    /// The unique ID number of the company that owns this item.
    global Integer? companyId { get; set; }

    /// A unique code representing this item.
    global String itemCode { get; set; }

    /// The unique ID number of the tax code that is applied when selling this item.
    /// When creating or updating an item, you can either specify the Tax Code ID number or the Tax Code string; you do not need to specify both values.
    global Integer? taxCodeId { get; set; }

    /// The unique code string of the Tax Code that is applied when selling this item.
    /// When creating or updating an item, you can either specify the Tax Code ID number or the Tax Code string; you do not need to specify both values.
    global String taxCode { get; set; }

    /// A friendly description of this item in your product catalog.
    global String description { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
