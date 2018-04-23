/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Indicates the rounding behavior of a form */

global enum RoundingTypeId
{
    // There is no rounding on the return
    None,

    // Round to the nearest whole number
    Nearest,

    // Always round up
    Up,

    // Always round down
    Down

}
