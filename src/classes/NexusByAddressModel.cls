/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Contains information about nexus jurisdictions that were declared
    // as a result of a call to `DeclareNexusByAddress`. For each address,
    // this object model contains a list of the nexus objects that were declared
    // according to the geocoding that corresponds to this address. */

global class NexusByAddressModel extends ErrorResult
{

    // The address that was provided by the user in the call to `DeclareNexusByAddress`
    global DeclareNexusByAddressModel address { get; set; }

    // List of all nexus objects that were affected by declaring nexus at the address specified
    // by `address`.
    global List<NexusModel> declaredNexus { get; set; }
}
