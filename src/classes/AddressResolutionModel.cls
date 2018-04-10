/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Address Resolution Model */

global class AddressResolutionModel extends ErrorResult
{

    // The original address
    global AddressInfo address { get; set; }

    // The validated address or addresses
    global List<ValidatedAddressInfo> validatedAddresses { get; set; }

    // The geospatial coordinates of this address
    global CoordinateInfo coordinates { get; set; }

    // The resolution quality of the geospatial coordinates
    global ResolutionQuality resolutionQuality { get; set; }

    // List of informational and warning messages regarding this address
    global List<TaxAuthorityInfo> taxAuthorities { get; set; }

    // List of informational and warning messages regarding this address
    global List<AvaTaxMessage> messages { get; set; }
}
