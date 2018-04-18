/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A model for return payments. */

global class ListFilingPaymentModel extends ErrorResult
{
    global List<FilingPaymentModel> result { get; set; }
}
