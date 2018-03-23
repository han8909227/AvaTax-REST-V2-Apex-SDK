global enum DocumentType
{
    /// Sales Order, estimate or quote (default). This is a temporary document type and is not saved in tax history.
    SalesOrder,

    /// Sales Invoice
    SalesInvoice,

    /// Purchase order, estimate, or quote. This is a temporary document type and is not saved in tax history.
    PurchaseOrder,

    /// Purchase Invoice
    PurchaseInvoice,

    /// Sales Return Order. This is a temporary document type and is not saved in tax history.
    ReturnOrder,

    /// Sales Return Invoice
    ReturnInvoice,

    /// InventoryTransferOrder
    InventoryTransferOrder,

    /// InventoryTransferInvoice
    InventoryTransferInvoice,

    /// ReverseChargeOrder
    ReverseChargeOrder,

    /// ReverseChargeInvoice
    ReverseChargeInvoice,

    /// No particular type
    AnyDocumentType

}