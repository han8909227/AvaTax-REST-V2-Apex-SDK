/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A list of possible AvaFile filing option types. */

global enum FilingOptionTypeId
{
    // Denotes the tax return is being filed on paper.
    Paper,

    // Denotes the form can be efiled optionally.
    OptionalEfile,

    // Denotes the form is being filed via efile.
    MandatoryEfile

}
