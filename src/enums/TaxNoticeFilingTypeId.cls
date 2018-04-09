/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A list of possible AvaFile filing types for tax notices. */

global enum TaxNoticeFilingTypeId
{

    /// Denotes the tax return is being filed via electronic means; excludes SST electronic filing.
    ElectronicReturn,

    /// Denotes the tax return is being filed on paper.
    PaperReturn,

    /// Denotes the tax return that was not filed.
    ReturnNotFiled,

    /// Denotes a return is paid via EFT and filed on paper without payment.
    EFTPaper,

    /// Denotes the tax return is an SST filing.
    SER,

    /// Denotes the tax return is a Trudsfile-EDI filing.
    TrustfileEdi,

    /// Denotes the tax return is an uploaded file.
    UploadFile,

    /// Denotes the tax return was manually filed via paper
    PaperManual,

    /// Denotes a cert capture return
    CertCapture,

    /// Denotes a signature ready return
    SignatureReady,

}
