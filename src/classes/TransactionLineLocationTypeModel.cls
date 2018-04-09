/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents information about location types stored in a line */

global class TransactionLineLocationTypeModel extends ErrorResult
{

    /// The unique ID number of this line location address model
    global Int64? documentLineLocationTypeId { get; set; }

    /// The unique ID number of the document line associated with this line location address model
    global Int64? documentLineId { get; set; }

    /// The address ID corresponding to this model
    global Int64? documentAddressId { get; set; }

    /// The location type code corresponding to this model
    global String locationTypeCode { get; set; }
}
