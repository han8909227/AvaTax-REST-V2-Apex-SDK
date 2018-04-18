/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Message object */

global class ListErrorDetail extends ErrorResult
{
    global List<ErrorDetail> result { get; set; }
}
