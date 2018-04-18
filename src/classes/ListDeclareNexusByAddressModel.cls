/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Use this object to provide an address and date range where your company does business.
    // This address will be used to determine what jurisdictions you should declare nexus and
    // calculate tax. */

global class ListDeclareNexusByAddressModel extends ErrorResult
{
    global List<DeclareNexusByAddressModel> result { get; set; }
}
