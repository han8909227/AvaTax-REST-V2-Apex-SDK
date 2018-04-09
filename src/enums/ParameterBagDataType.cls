/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The data type that must be passed in a parameter bag */

global enum ParameterBagDataType
{

    /// This data type is a string.
    String,

    /// This data type is either 'true' or 'false'.
    Boolean,

    /// This data type is a numeric value. It can include decimals.
    Numeric,

}
