/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a purchase order number for a transaction */

global class PoNumberModel extends ErrorResult
{

    /// Unique ID number
    global Integer? id { get; set; }

    /// Purchase order number.
    global String poNumber { get; set; }
}
