/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents the type of service or subscription given to a user */

global enum ServiceTypeId
{
    // None
    None,

    // AvaTaxST
    AvaTaxST,

    // AvaTaxPro
    AvaTaxPro,

    // AvaTaxGlobal
    AvaTaxGlobal,

    // AutoAddress
    AutoAddress,

    // AutoReturns
    AutoReturns,

    // TaxSolver
    TaxSolver,

    // AvaTaxCsp
    AvaTaxCsp,

    // Twe
    Twe,

    // Mrs
    Mrs,

    // AvaCert
    AvaCert,

    // AuthorizationPartner
    AuthorizationPartner,

    // CertCapture
    CertCapture,

    // AvaUpc
    AvaUpc,

    // AvaCUT
    AvaCUT,

    // AvaLandedCost
    AvaLandedCost,

    // AvaLodging
    AvaLodging,

    // AvaBottle
    AvaBottle,

    // MRSComplianceManager
    MRSComplianceManager,

    // Send Sales Rate file service
    SendSalesRateFile

}
