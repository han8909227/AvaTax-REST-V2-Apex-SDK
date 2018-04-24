/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an override of tax jurisdictions for a specific address.
    // 
    // During the time period represented by EffDate through EndDate, all tax decisions for addresses matching
    // this override object will be assigned to the list of jurisdictions designated in this object. */

global class ListJurisdictionOverrideModel extends ErrorResult
{
    global List<JurisdictionOverrideModel> result { get; set; }
}
