/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// A model for return augmentations.

global class FilingAugmentationModel extends ErrorResult
{

    /// The unique ID number for the augmentation.
    global Int64? id { get; set; }

    /// The filing return id that this applies too
    global Int64? filingId { get; set; }

    /// The field amount.
    global Decimal fieldAmount { get; set; }

    /// The field name.
    global String fieldName { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The User ID of the user who created this record.
    global Integer? createdUserId { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// The user ID of the user who last modified this record.
    global Integer? modifiedUserId { get; set; }
}
