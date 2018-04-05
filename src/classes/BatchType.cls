public enum BatchType
{
    AvaCertUpdate,

    AvaCertUpdateAll,

    BatchMaintenance,

    CompanyLocationImport,

    DocumentImport,

    ExemptCertImport,

    ItemImport,

    SalesAuditExport,

    SstpTestDeckImport,

    TaxRuleImport,

    /// This batch type represents tax transaction data being uploaded to AvaTax. Each line in the batch represents a single transaction
    ///  or a line in a multi-line transaction. For reference, see [Batched Transactions in REST v2](http://developer.avalara.com/blog/2016/10/24/batch-transaction-upload-in-rest-v2)
    TransactionImport,

    UPCBulkImport,

    UPCValidationImport

}