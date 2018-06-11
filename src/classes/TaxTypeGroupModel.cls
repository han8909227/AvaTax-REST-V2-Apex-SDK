/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a tax type group */

global class TaxTypeGroupModel extends ErrorResult
{

    // The unique ID number of this tax type group.
    global Integer id { get; set; }

    // The unique human readable Id of this tax type group.
    global String taxTypeGroup { get; set; }

    // The description of this tax type group.
    global String description { get; set; }

    // If this tax type group requires a subscription, this contains the ID number of the subscription type required to use it.
    global Integer subscriptionTypeId { get; set; }

    // If this tax type group requires a subscription, this contains the friendly name of the subscription type required to use it.
    global String subscriptionDescription { get; set; }

    // The name of the tab in the AvaTax website corresponding to this tax type group.
    global String tabName { get; set; }

    // True if this tax type group is displayed in the user interface of the AvaTax website.
    global Boolean showColumn { get; set; }
}
