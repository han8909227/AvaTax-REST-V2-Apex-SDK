@isTest
public class TransactionsTest {

     
    @isTest
    static void TC1001_AddLines() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AddLinesResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        
        AddTransactionLineModel addLines = new AddTransactionLineModel();
         addLines.companyCode= 'DEFAULT';
  		 addLines.transactionCode= '1234';
  		 addLines.documentType= documentType.SalesInvoice;
 		
        List<LineItemModel> linesList = new List<LineItemModel>();
 		LineItemModel lines = new LineItemModel();
          lines.lineNumber= '1';
          lines.quantity= 1;
          lines.amount= 100;
          lines.taxCode= 'PS081282';
          lines.itemCode= 'Y0001';
          lines.description= 'Yarn';
        
        linesList.add(lines);
        addLines.lines = linesList;
          addLines.renumber= false;
         
        TransactionLineModel transLine = new TransactionLineModel();
        transLine.boundaryOverrideId =12345;
        transLine.businessIdentificationNo ='';
        transLine.certificateId ='';
        transLine.customerUsageType ='';
        transLine.description ='';
        transLine.destinationAddressId =12345;
        transLine.discountAmount =12345;
        transLine.discountTypeId =12345;
        transLine.exemptAmount =12345;
            transLine.exemptCertId =12345;
        transLine.exemptNo ='';
        transLine.id =12345;
        transLine.isItemTaxable =true;
        transLine.isSSTP =true;
        transLine.itemCode ='';
        transLine.lineAmount =12345;
        transLine.lineNumber ='';
        transLine.originAddressId =12345;
        transLine.quantity =12345;
        transLine.ref1='';
        transLine.ref2 ='';
        transLine.reportingDate =system.today();
        transLine.revAccount ='';
        transLine.sourcing = Sourcing.Origin;
    transLine.tax =12345;
        transLine.taxableAmount =12345;
        transLine.taxCalculated =12345;
        transLine.taxCode ='';
        transLine.taxCodeId =12345;
            transLine.taxDate =system.today();
        transLine.taxEngine ='';
        transLine.taxIncluded =true;
        transLine.taxOverrideAmount =12345;
        transLine.taxOverrideReason ='';
            transLine.taxOverrideType =TaxOverrideTypeId.Exemption;
        transLine.transactionId =12345;
    
        TransactionAddressModel transAddress = new TransactionAddressModel();
        transAddress.boundaryLevel = BoundaryLevel.Address;
        transAddress.city = '';
        transAddress.country = '';
        transAddress.id = 12345;
        transAddress.latitude = '';
        transAddress.line1 = '';
        transAddress.line2 = '';
          transAddress.longitude = '';
        transAddress.postalCode = '';
        transAddress.region = '';
        transAddress.taxRegionId = 12345;
        transAddress.taxRegionId = 12345;
      
        TransactionLocationTypeModel transLocation = new TransactionLocationTypeModel();
        transLocation.documentAddressId=12345;
     transLocation.documentId=12345;
     transLocation.documentLocationTypeId=12345;
     transLocation.locationTypeCode='';
    
        
        TransactionSummary transSummary = new TransactionSummary();
        transSummary.country='';
        transSummary.exemption=12345;
        transSummary.jurisCode='';
        transSummary.jurisName='';
        transSummary.jurisType=JurisdictionType.City;
        transSummary.nonTaxable=12345;
        transSummary.rate=12345;
        transSummary.rateType= RateType.General;
        transSummary.rateTypeCode='';
          transSummary.region='';
        transSummary.stateAssignedNo='';
        transSummary.tax=12345;
        transSummary.taxable=12345;
        transSummary.taxAuthorityType=12345;
        transSummary.taxCalculated=12345;
        transSummary.taxGroup='';
        transSummary.taxName='';
        transSummary.taxType=TaxType.Sales;
   
        TransactionLineDetailModel transData = new TransactionLineDetailModel();
        transData.addressId = 12345;
        transData.country = '';
        transData.countyFIPS = '';
        transData.exemptAmount = 12345;
        transData.exemptReasonId = 12345;
        transData.id = 12345;
        transData.inState = true;
        transData.jurisCode = '';
        transData.jurisdictionId = 12345;
        transData.jurisName = '';
        transData.jurisType = JurisTypeId.CTY;
        transData.nonTaxableAmount = 12345;
        transData.nonTaxableRuleId = 12345;
        transData.nonTaxableType = TaxRuleTypeId.ExemptEntityRule;
		transData.nonTaxableUnits = 12345;
        transData.rate = 12345;
        transData.rateRuleId = 12345;
        transData.rateSourceId = 12345;
        transData.rateType = RateType.General;
        transData.rateTypeCode = '';
        transData.region = '';
      transData.serCode = '';
        transData.signatureCode = '';
        transData.sourcing = Sourcing.Origin;
        transData.stateAssignedNo = '';
        transData.stateFIPS = '';
        transData.tax = 12345;
     transData.taxName = '';
        transData.taxType = TaxType.ConsumerUse;
      transData.taxableAmount = 12345;
      transData.taxableUnits = 12345;
      transData.taxAuthorityTypeId = 12345;
      transData.taxCalculated = 12345;
      transData.taxOverride = 12345;
      transData.taxRegionId = 12345;
      transData.transactionId = 12345;
     transData.transactionLineId = 12345;
      
                
        
        TransactionModel  result = client.AddLines(null, addLines) ;
    }

    

    @isTest
    static void TC1002_AdjustTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AdjustTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

		AdjustTransactionModel adjustRequest = new AdjustTransactionModel();
		adjustRequest.adjustmentDescription= 'Adjust Tax';
		adjustRequest.adjustmentReason = adjustmentReason.SourcingIssue;
		
        CreateTransactionModel taxRequest = new CreateTransactionModel();
        taxRequest.batchCode ='adjust';
        taxRequest.businessIdentificationNo ='12345';
        taxRequest.code = 'code';
        taxRequest.commitDocument = true;
        taxRequest.companyCode='default';
        taxRequest.currencyCode = 'EU';
        taxRequest.customerCode='c1';
        taxRequest.customerUsageType='c';
        taxRequest.description ='';
        taxRequest.discount = 1;
        taxRequest.email = '';
        taxRequest.exchangeRate =1;
        taxRequest.exchangeRateEffectiveDate = system.today();
        taxRequest.exemptionNo = '12345';
        taxRequest.isSellerImporterOfRecord = true;
        taxRequest.posLaneCode='12345';
        taxRequest.purchaseOrderNo='';
        taxRequest.referenceCode='';
        taxRequest.reportingLocationCode='';
        taxRequest.salespersonCode='';
        taxRequest.serviceMode=serviceMode.Local;
      	taxRequest.type = DocumentType.SalesInvoice;  
        
		AddressesModel address = new AddressesModel();
		AddressLocationInfo addressShipTo = new AddressLocationInfo();
		addressShipTo.city ='';
        addressShipTo.country='';
        addressShipTo.latitude=12345;
        addressShipTo.line1='';
        addressShipTo.line2='';
        addressShipTo.line3='';
        addressShipTo.locationCode='';
        addressShipTo.longitude=12345;
        addressShipTo.postalCode='';
        addressShipTo.region='';
        
        address.pointOfOrderAcceptance=addressShipTo;
        address.pointOfOrderOrigin=addressShipTo;
        address.shipFrom=addressShipTo;
        address.shipTo=addressShipTo;
        address.singleLocation=addressShipTo;
        
        List<LineItemModel> linesList = new List<LineItemModel>();
 		LineItemModel lines = new LineItemModel();
          lines.lineNumber= '1';
          lines.quantity= 1;
          lines.amount= 100;
          lines.taxCode= 'PS081282';
          lines.itemCode= 'Y0001';
          lines.description= 'Yarn';

        taxRequest.addresses =address;
        taxRequest.lines =linesList;
		
        adjustRequest.newTransaction = taxRequest; 
        TransactionModel  result = client.AdjustTransaction('companyCode', 'transactionCode', adjustRequest) ;
    }
    
      @isTest
    static void TC1003_AuditTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        
        AuditTransactionModel  auditResult = client.AuditTransaction('companyCode', 'transactionCode') ;
   	
    }

    
      @isTest
    static void TC1004_AuditTransaction() {
        
        AuditTransactionModel auditTrans = new AuditTransactionModel();
        auditTrans.apiCallStatus = ApiCallStatus.OriginalApiCallAvailable;
        auditTrans.companyId = 12345;
        auditTrans.serverDuration = system.today();
        auditTrans.serverTimestamp = system.today();
        
        
        OriginalApiRequestResponseModel og = new OriginalApiRequestResponseModel();
        og.request='';
        og.response='';
        
        ReconstructedApiRequestResponseModel ra = new ReconstructedApiRequestResponseModel();
        CreateTransactionModel taxRequest = new CreateTransactionModel();
        ra.request = taxRequest;
        auditTrans.original=og;
        auditTrans.reconstructed=ra;
        
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        
        AuditTransactionModel  auditResult = client.AuditTransactionWithType('companyCode', 'transactionCode', documentType.SalesInvoice) ;
   	
    }

    
      @isTest
    static void TC1005_BulkLockTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

         
        BulkLockTransactionModel bulkModel = new BulkLockTransactionModel();
     	
        AvaTaxException avaException = new AvaTaxException();
        ErrorResult err ;
        avaException.error= err;
        
        List<Integer> integerList = new List<integer>{33,333,333} ;
       
        bulkModel.documentIds = integerList;
        bulkModel.isLocked = true;
        
        BulkLockTransactionResult  bulkResult = client.BulkLockTransaction(bulkModel) ;
   		Integer bulknumberOfRecords =  bulkResult.numberOfRecords;
    }

    
    
      @isTest
    static void TC1006_changeTransCode() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        ChangeTransactionCodeModel changeTransCode = new ChangeTransactionCodeModel();
        changeTransCode.newCode ='';
        
        TransactionModel  changeTransCodeResult = client.ChangeTransactionCode('companyCode', 'transactionCode',changeTransCode );
   			
    }
    
      @isTest
    static void TC1007_CommitTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        CommitTransactionModel commitTransCode = new CommitTransactionModel();
        commitTransCode.commitTransaction = true; 
        TransactionModel  commitTransCodeResult = client.CommitTransaction('companyCode', 'transactionCode', commitTransCode);
   			
    }
    
    
    
    @isTest // Create Transactions under AvaTax

    static void TC1008_CreateTransactionTest() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);

        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('ashishbakhtar', 'Password@790');

        StaticResource getTaxRequestSR = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetSubscriptionResource'
            LIMIT 1
        ];
        String requestBody = getTaxRequestSR.Body.toString();
        CreateTransactionModel getTaxRequest = (CreateTransactionModel) System.JSON.deserialize(requestBody, CreateTransactionModel.class);
       
         // Call method to test
        TransactionModel result = avataxCCInstance.CreateTransaction(null, getTaxRequest);
        system.debug('gettaxresponse'+result);
        // Verify mock response is not null
        System.assertNotEquals(null, result, 'The callout returned a null response.');
  
       	
        StaticResource getTaxResponseSR = [SELECT Id, Body FROM StaticResource WHERE Name = 'CreateTransactionResponseResource'
            LIMIT 1
        ];
        String getTaxResponseBody = getTaxResponseSR.Body.toString();
        system.debug('static resource value' + getTaxResponseBody);
      
        TransactionModel expected = (TransactionModel) System.JSON.deserialize(getTaxResponseBody, TransactionModel.class);
	   System.assertEquals(expected.id, result.id);
       System.assertEquals(expected.code, result.code);
       System.assertEquals(expected.adjustmentDescription, result.adjustmentDescription);
       System.assertEquals(expected.adjustmentReason, result.adjustmentReason);
       System.assertEquals(expected.batchCode, result.batchCode);
       System.assertEquals(expected.businessIdentificationNo, result.businessIdentificationNo);
       System.assertEquals(expected.companyId, result.companyId);
       System.assertEquals(expected.country, result.country);
       System.assertEquals(expected.currencyCode, result.currencyCode);
       System.assertEquals(expected.customerUsageType, result.customerUsageType);
       System.assertEquals(expected.customerVendorCode, result.customerVendorCode);
       System.assertEquals(expected.description, result.description);
       System.assertEquals(expected.destinationAddressId, result.destinationAddressId);
       System.assertEquals(expected.email, result.email);
       System.assertEquals(expected.exchangeRate, result.exchangeRate);
       System.assertEquals(expected.exchangeRateEffectiveDate, result.exchangeRateEffectiveDate);
       System.assertEquals(expected.exemptNo, result.exemptNo);
       System.assertEquals(expected.history, result.history);
       System.assertEquals(expected.isSellerImporterOfRecord, result.isSellerImporterOfRecord);
       System.assertEquals(expected.locationCode, result.locationCode);
       System.assertEquals(expected.locked, result.locked);
       System.assertEquals(expected.modifiedDate, result.modifiedDate);
       System.assertEquals(expected.modifiedUserId, result.modifiedUserId);
       System.assertEquals(expected.originAddressId, result.originAddressId);
       System.assertEquals(expected.paymentDate, result.paymentDate);
       System.assertEquals(expected.purchaseOrderNo, result.purchaseOrderNo);
       System.assertEquals(expected.reconciled, result.reconciled);
       System.assertEquals(expected.referenceCode, result.referenceCode);
       System.assertEquals(expected.region, result.region);
       System.assertEquals(expected.reportingLocationCode, result.reportingLocationCode);
       System.assertEquals(expected.salespersonCode, result.salespersonCode);
       System.assertEquals(expected.softwareVersion, result.softwareVersion);
       System.assertEquals(expected.status, result.status);
       System.assertEquals(expected.taxDate, result.taxDate);
       System.assertEquals(expected.taxOverrideAmount, result.taxOverrideAmount);
       System.assertEquals(expected.taxOverrideReason, result.taxOverrideReason);
       System.assertEquals(expected.taxOverrideType, result.taxOverrideType);
       System.assertEquals(expected.totalAmount, result.totalAmount);
       System.assertEquals(expected.totalExempt, result.totalExempt);
       System.assertEquals(expected.totalTax, result.totalTax);
       System.assertEquals(expected.totalTaxable, result.totalTaxable);
       System.assertEquals(expected.totalTaxCalculated, result.totalTaxCalculated);
       System.assertEquals(expected.transactionDate, result.transactionDate);
       System.assertEquals(expected.type, result.type);
       System.assertEquals(expected.version, result.version);
        
    }

    
    @isTest
    static void TC1009_CreateAdjustTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AdjustTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

		CreateOrAdjustTransactionModel createAdjustRequest = new CreateOrAdjustTransactionModel();
		
        CreateTransactionModel taxRequest = new CreateTransactionModel();
        taxRequest.batchCode ='adjust';
        taxRequest.businessIdentificationNo ='12345';
        taxRequest.code = 'code';
        taxRequest.commitDocument = true;
        taxRequest.companyCode='default';
        taxRequest.currencyCode = 'EU';
        taxRequest.customerCode='c1';
        taxRequest.customerUsageType='c';
        taxRequest.description ='';
        taxRequest.discount = 1;
        taxRequest.email = '';
        taxRequest.exchangeRate =1;
        taxRequest.exchangeRateEffectiveDate = system.today();
        taxRequest.exemptionNo = '12345';
        taxRequest.isSellerImporterOfRecord = true;
        taxRequest.posLaneCode='12345';
        taxRequest.purchaseOrderNo='';
        taxRequest.referenceCode='';
        taxRequest.reportingLocationCode='';
        taxRequest.salespersonCode='';
        taxRequest.serviceMode=serviceMode.Local;
      	taxRequest.type = DocumentType.SalesInvoice;  
        
		AddressesModel address = new AddressesModel();
		AddressLocationInfo addressShipTo = new AddressLocationInfo();
		addressShipTo.city ='';
        addressShipTo.country='';
        addressShipTo.latitude=12345;
        addressShipTo.line1='';
        addressShipTo.line2='';
        addressShipTo.line3='';
        addressShipTo.locationCode='';
        addressShipTo.longitude=12345;
        addressShipTo.postalCode='';
        addressShipTo.region='';
        
        address.pointOfOrderAcceptance=addressShipTo;
        address.pointOfOrderOrigin=addressShipTo;
        address.shipFrom=addressShipTo;
        address.shipTo=addressShipTo;
        address.singleLocation=addressShipTo;
        
        List<LineItemModel> linesList = new List<LineItemModel>();
 		LineItemModel lines = new LineItemModel();
          lines.lineNumber= '1';
          lines.quantity= 1;
          lines.amount= 100;
          lines.taxCode= 'PS081282';
          lines.itemCode= 'Y0001';
          lines.description= 'Yarn';

        taxRequest.addresses =address;
        taxRequest.lines =linesList;
		
        createAdjustRequest.createTransactionModel = taxRequest;
        TransactionModel  result = client.CreateOrAdjustTransaction('include',createAdjustRequest) ;
    }
    
    
      @isTest
    static void TC10010_CommitTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        RemoveTransactionLineModel delLine = new RemoveTransactionLineModel();

        delLine.companyCode='';
        delLine.documentType= documentType.SalesInvoice;
        
        List<string> linesList = new List<string>{'1'};
 		

        delLine.lines = linesList;
        delLine.renumber = true;
        delLine.transactionCode ='';
        
        TransactionModel  delTransCodeResult = client.DeleteLines('include', delLine);
   			
    }
    
      @isTest
    static void TC10011_GetTransactionByCode() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        TransactionModel  TransCodeResult = client.GetTransactionByCode('companyCode', 'transactionCode', 'include');
   			
    }
    
      @isTest
    static void TC10012_GetTransactionByCodeAndType() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        TransactionModel  TransCodeTypeResult = client.GetTransactionByCodeAndType('companyCode', 'transactionCode', documentType.SalesInvoice, 'include');
   			
    }
    
    
      @isTest
    static void TC10013_GetTransactionById() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        TransactionModel  TransCodeTypeResult = client.GetTransactionById(12345, 'include');
   			
    }
    
    
    
      @isTest
    static void TC10014_VoidTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        VoidTransactionModel voidTransCode = new VoidTransactionModel();
       voidTransCode.code = VoidReasonCode.AdjustmentCancelled;
        TransactionModel  commitTransCodeResult = client.VoidTransaction('companyCode', 'transactionCode', voidTransCode);
   			
    }
    
    
      @isTest
    static void TC10015_VerifyTransaction() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AuditTransactionResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithBearerToken('bearerToken');

        VerifyTransactionModel verifyTransCode = new VerifyTransactionModel();
    	verifyTransCode.verifyTotalAmount=12345;
        verifyTransCode.verifyTotalTax=12345;
        verifyTransCode.verifyTransactionDate= system.today();
        
        List<String> addresses = new List<String>{''};
        EntityUseCodeModel eu = new EntityUseCodeModel();
        eu.code='';
        eu.description='';
        eu.name='';
        eu.validCountries = addresses;
        
        ExemptionReasonModel er = new ExemptionReasonModel();
        er.id =12345;
        er.name='';
        
        ErrorInfo ei = new ErrorInfo();
        ei.code = '';
        
        List<ErrorDetail> errMList = new List<ErrorDetail>();
        
        ErrorDetail errM = new ErrorDetail();
        errM.description='';
        errM.errorCode1= ErrorCodeId1.BrazilValidationError;
        errM.errorCode2=ErrorCodeId2.AvalaraIdentityApiError;
        errM.faultCode='';
        errM.errorNumber=12345;
        errM.helpLink='';
        errM.message='';
        errM.refersTo='';
        errM.severity=SeverityLevel.Success;
        errMList.add(errM);
        ei.details=errMList;
        ei.message='';
        ei.target = ErrorTargetCode.AvalaraIdentityServer;
        
        
        TransactionModel  commitTransCodeResult = client.VerifyTransaction('companyCode', 'transactionCode', verifyTransCode);
   			
    }
    
    
    
    
}