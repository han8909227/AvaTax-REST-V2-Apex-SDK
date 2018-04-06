/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// Permission level of a user

global enum SecurityRoleId
{

    /// NoAccess
    NoAccess,

    /// SiteAdmin
    SiteAdmin,

    /// AccountOperator
    AccountOperator,

    /// AccountAdmin
    AccountAdmin,

    /// AccountUser
    AccountUser,

    /// SystemAdmin
    SystemAdmin,

    /// Registrar
    Registrar,

    /// CSPTester
    CSPTester,

    /// CSPAdmin
    CSPAdmin,

    /// SystemOperator
    SystemOperator,

    /// TechnicalSupportUser
    TechnicalSupportUser,

    /// TechnicalSupportAdmin
    TechnicalSupportAdmin,

    /// TreasuryUser
    TreasuryUser,

    /// TreasuryAdmin
    TreasuryAdmin,

    /// ComplianceUser
    ComplianceUser,

    /// ComplianceAdmin
    ComplianceAdmin,

    /// ProStoresOperator
    ProStoresOperator,

    /// CompanyUser
    CompanyUser,

    /// CompanyAdmin
    CompanyAdmin,

    /// ComplianceTempUser
    ComplianceTempUser,

    /// ComplianceRootUser
    ComplianceRootUser,

    /// ComplianceOperator
    ComplianceOperator,

    /// SSTAdmin
    SSTAdmin,

}
