/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an advanced rule table */

global class AdvancedRuleTableModel extends ErrorResult
{

    // The unique ID of the table
    global Integer id { get; set; }

    // Account ID
    global Integer accountId { get; set; }

    // The name of the table
    global String csvTableName { get; set; }

    // The CSV data
    global String csvTable { get; set; }
}
