/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Jurisdiction boundary precision level found for address. This depends on the accuracy of the address
    //  as well as the precision level of the state provided jurisdiction boundaries. */

global enum BoundaryLevel
{

    /// Street address precision
    Address,

    /// 9-digit zip precision
    Zip9,

    /// 5-digit zip precision
    Zip5,

}
