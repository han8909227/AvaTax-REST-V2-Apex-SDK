/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Choice of rounding level for a transaction */

global enum RoundingLevelId
{

    /// Round tax on each line separately
    Line,

    /// Round tax at the document level
    Document,

}
