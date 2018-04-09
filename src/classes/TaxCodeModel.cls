/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a tax code that can be applied to items on a transaction.
    // A tax code can have specific rules for specific jurisdictions that change the tax calculation behavior. */

global class TaxCodeModel extends ErrorResult
{

    /// The unique ID number of this tax code.
    global Integer id { get; set; }

    /// The unique ID number of the company that owns this tax code.
    global Integer companyId { get; set; }

    /// A code string that identifies this tax code.
    global String taxCode { get; set; }

    /// The type of this tax code.
    global String taxCodeTypeId { get; set; }

    /// A friendly description of this tax code.
    global String description { get; set; }

    /// If this tax code is a subset of a different tax code, this identifies the parent code.
    global String parentTaxCode { get; set; }

    /// True if this tax code type refers to a physical object. Read only field.
    global Boolean isPhysical { get; set; }

    /// The Avalara Goods and Service Code represented by this tax code.
    global Integer goodsServiceCode { get; set; }

    /// The Avalara Entity Use Code represented by this tax code.
    global String entityUseCode { get; set; }

    /// True if this tax code is active and can be used in transactions.
    global Boolean isActive { get; set; }

    /// True if this tax code has been certified by the Streamlined Sales Tax governing board.
    // By default, you should leave this value empty.
    global Boolean isSSTCertified { get; set; }

    /// The date when this record was created.
    global DateTime createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer modifiedUserId { get; set; }
}
