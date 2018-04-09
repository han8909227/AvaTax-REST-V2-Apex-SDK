/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Rate type Model */

global class RateTypeModel extends ErrorResult
{

    /// The unique ID number of this rate type.
    global String id { get; set; }

    /// Description of this rate type.
    global String description { get; set; }

    /// Country code for this rate type
    global String country { get; set; }
}
