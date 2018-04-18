/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a declaration of nexus within a particular taxing jurisdiction. */

global class ListNexusModel extends ErrorResult
{
    global List<NexusModel> result { get; set; }
}
