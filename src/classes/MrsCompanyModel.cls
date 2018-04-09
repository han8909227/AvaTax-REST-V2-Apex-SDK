/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A company and account */

global class MrsCompanyModel extends ErrorResult
{

    /// The unique ID number of this company.
    global Integer companyId { get; set; }

    /// The name of this company, as shown to customers.
    global String companyName { get; set; }

    /// The unique ID number of the account this company belongs to.
    global Integer accountId { get; set; }

    /// The name of this account, as shown to customers.
    global String accountName { get; set; }

    /// The taxpayer identification number for the company
    global String tin { get; set; }

    /// The company code for the company
    global String companyCode { get; set; }
}
