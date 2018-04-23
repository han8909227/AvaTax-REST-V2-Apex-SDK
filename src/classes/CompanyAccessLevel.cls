/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Indicates the level of companies that can be accessed */

global enum CompanyAccessLevel
{
    // No permission to access companies.
    None,

    // Permission to access a single company and its children.
    SingleCompany,

    // Permission to access all companies in a single account.
    SingleAccount,

    // Permission to access all companies in all accounts. Reserved for system administration tasks.
    AllCompanies

}
