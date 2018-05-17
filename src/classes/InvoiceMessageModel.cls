/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a message to be displayed on an invoice. */

global class InvoiceMessageModel extends ErrorResult
{

    // The content of the invoice message.
    global String content { get; set; }

    // The applicable tax line numbers and codes.
    global List<String> lineNumbers { get; set; }
}
