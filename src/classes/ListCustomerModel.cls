/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a customer to whom you sell products and/or services. */

global class ListCustomerModel extends ErrorResult
{
    global List<CustomerModel> result { get; set; }
}
