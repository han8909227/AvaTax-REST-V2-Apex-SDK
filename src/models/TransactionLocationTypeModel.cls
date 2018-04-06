/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Information about a location type

global class TransactionLocationTypeModel extends ErrorResult
{

    /// Location type ID for this location type in transaction
    global Int64? documentLocationTypeId { get; set; }

    /// Transaction ID
    global Int64? documentId { get; set; }

    /// Address ID for the transaction
    global Int64? documentAddressId { get; set; }

    /// Location type code
    global String locationTypeCode { get; set; }
}
