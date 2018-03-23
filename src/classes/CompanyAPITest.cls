@isTest
public class CompanyAPITest {
    @isTest 
    static void TC1000_GetCompany() {
        CompanyModel cModel = new CompanyModel();
        cModel.id = 1;
        System.assertEquals(cModel.id, 1);

        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetCompanyResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        CompanyModel result = avataxCCInstance.GetCompany(12345, 'contacts');
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetCompanyResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
        EcmsModel ecms = new EcmsModel();
        ecms.address1='';
        ecms.address2='';
        ecms.address3='';
        ecms.avaCertId='';
        ecms.address1='';
        ecms.businessTypeOtherDescription='';
        ecms.city='';
        ecms.companyId=12345;
        ecms.country='';
        ecms.countryIssued='';
        ecms.createdDate= system.today();
        ecms.customerCode='';
        ecms.customerName='';
        ecms.createdUserId=12345;
        ecms.documentRefNo='';
        ecms.exemptCertId=12345;
        ecms.exemptCertReviewStatusId=exemptCertReviewStatusId.Pending;
        ecms.exemptCertStatusId=exemptCertStatusId.Inactive;
        ecms.exemptCertTypeId=exemptCertTypeId.Blanket;
        ecms.exemptReasonId='';
		ecms.exemptReasonOtherDescription='';
        ecms.expiryDate=system.today();
        ecms.lastTransactionDate=system.today();
        ecms.modifiedDate=system.today();
        ecms.modifiedUserId=12345;
        ecms.postalCode='';
        ecms.region='';
        ecms.regionsApplicable='';
        
        List<EcmsDetailModel> ecmsData = new List<EcmsDetailModel>();
        EcmsDetailModel ecmsDataModel = new EcmsDetailModel();
        ecmsDataModel.country = '';
        ecmsDataModel.endDate = system.today();
        ecmsDataModel.exemptCertDetailId = 12345;
        ecmsDataModel.exemptCertId = 12345;
        ecmsDataModel.idNo = '';
        ecmsDataModel.idType = '';
        ecmsDataModel.region = '';
        ecmsDataModel.stateFips = '';
        
        List<EcmsDetailTaxCodeModel> taxCodeC = new List<EcmsDetailTaxCodeModel>();
        
        EcmsDetailTaxCodeModel taxCode = new EcmsDetailTaxCodeModel();
        taxCode.exemptCertDetailId=12345;
        taxCode.exemptCertDetailTaxCodeId=12345;
        taxCode.taxCodeId=12345;
        taxCodeC.add(taxCode);
        
        ecmsDataModel.taxCodes = taxCodeC;
        ecms.details = ecmsData;
     
        UPCModel upcModel = new UPCModel();
        List<UPCModel> upcModelList = new List<UPCModel>();
        
        upcModel.companyId = 12345;
        upcModel.createdDate = system.today();
        upcModel.createdUserId = 12345;
        upcModel.description = '';
        upcModel.effectiveDate = system.today();
        upcModel.endDate = system.today();
        upcModel.id = 12345;
        upcModel.isSystem = 12345;
        upcModel.legacyTaxCode = '';
        upcModel.modifiedDate = system.today();
        upcModel.upc = '';
        upcModel.modifiedUserId = 12345;
        upcModel.usage = 12345;
        upcModelList.add(upcModel);
        
        List<EcmsModel> ecmsList = new List<EcmsModel>();
        ecmsList.add(ecms);
        
        result.exemptCerts = ecmsList;
        result.upcs= upcModelList;
        
        CompanyModel expectedServiceResponse = (CompanyModel) System.JSON.deserialize(expectResponse, CompanyModel.class);
       expectedServiceResponse.StatusCode =200;
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
        system.assertEquals(expectedServiceResponse.id, result.id);
        system.assertEquals(expectedServiceResponse.accountId, result.accountId);
        system.assertEquals(expectedServiceResponse.parentCompanyId, result.parentCompanyId);
        system.assertEquals(expectedServiceResponse.sstPid, result.sstPid);
        system.assertEquals(expectedServiceResponse.companyCode, result.companyCode);
        system.assertEquals(expectedServiceResponse.name, result.name);
        system.assertEquals(expectedServiceResponse.isDefault, result.isDefault);
        system.assertEquals(expectedServiceResponse.defaultLocationId, result.defaultLocationId);
        system.assertEquals(expectedServiceResponse.isActive, result.isActive);
        system.assertEquals(expectedServiceResponse.taxpayerIdNumber, result.taxpayerIdNumber);
        system.assertEquals(expectedServiceResponse.hasProfile, result.hasProfile);
        system.assertEquals(expectedServiceResponse.isReportingEntity, result.isReportingEntity);
        system.assertEquals(expectedServiceResponse.sstEffectiveDate, result.sstEffectiveDate);
        system.assertEquals(expectedServiceResponse.defaultCountry, result.defaultCountry);
        system.assertEquals(expectedServiceResponse.baseCurrencyCode, result.baseCurrencyCode);
        system.assertEquals(expectedServiceResponse.warningsEnabled, result.warningsEnabled);
        system.assertEquals(expectedServiceResponse.isTest, result.isTest);
        system.assertEquals(expectedServiceResponse.inProgress, result.inProgress);
        system.assertEquals(expectedServiceResponse.businessIdentificationNo, result.businessIdentificationNo);
        system.assertEquals(expectedServiceResponse.defaultLocationId, result.defaultLocationId);
        system.assertEquals(expectedServiceResponse.createdDate, result.createdDate);
        system.assertEquals(expectedServiceResponse.createdUserId, result.createdUserId);
        system.assertEquals(expectedServiceResponse.modifiedDate, result.modifiedDate);
        system.assertEquals(expectedServiceResponse.modifiedUserId, result.modifiedUserId);

    
    }
    
    @isTest 
    static void TC1001_CreateCompany() {
        List<CompanyModel> companyList = new List<CompanyModel>();
        CompanyModel company = new CompanyModel();
        company.companyCode= 'test212';
    company.name= 'Default Company' ;
    company.isDefault= false;
    company.isActive= true;
    company.taxpayerIdNumber = '123456789';
    company.hasProfile= true;
    company.isReportingEntity= false;
    company.defaultCountry = 'US';
    company.baseCurrencyCode = 'USD';
    company.roundingLevelId=roundingLevelId.Line;
    company.isTest= true;
    company.taxDependencyLevelId=taxDependencyLevelId.Document;
    company.inProgress= false;

        companyList.add(company);
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateCompanyResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        ListCompanyModel result = avataxCCInstance.CreateCompanies(companyList);
        system.debug('actual '+result);
        
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'CreateCompanyResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
        ListCompanyModel expectedServiceResponse = new ListCompanyModel();
       expectedServiceResponse.result= (List<CompanyModel>) System.JSON.deserialize(expectResponse, List<CompanyModel>.class);
       expectedServiceResponse.StatusCode =200;
        system.debug('expecte ' +expectedServiceResponse);
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
        //system.assertEquals(expectedServiceResponse.result[0] , result.result[0]);
        
    }
    
    @isTest 
    static void TC1002_UpdateCompany() {
        CompanyModel company = new CompanyModel();
        company.companyCode= 'test212';
    company.name= 'Default Company' ;
    company.isDefault= false;
    company.isActive= true;
    company.taxpayerIdNumber = '123456789';
    company.hasProfile= true;
    company.isReportingEntity= false;
    company.defaultCountry = 'US';
    company.baseCurrencyCode = 'USD';
    company.roundingLevelId=roundingLevelId.Line;
    company.isTest= true;
    company.taxDependencyLevelId=taxDependencyLevelId.Document;
    company.inProgress= false;

        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('UpdateCompanyResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        CompanyModel result = avataxCCInstance.UpdateCompany(83958,company);
        system.debug('actual '+result);
        
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'UpdateCompanyResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
        CompanyModel expectedServiceResponse = new CompanyModel();
       expectedServiceResponse= (CompanyModel) System.JSON.deserialize(expectResponse, CompanyModel.class);
       expectedServiceResponse.StatusCode =200;
        system.debug('expecte ' +expectedServiceResponse);
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
    //  system.assertEquals(expectedServiceResponse , result);
        
    }
    

    @isTest 
    static void TC1003_GetCompanyConfiguration() {
  
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetCompanyConfigurationResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        ListCompanyConfigurationModel result = avataxCCInstance.GetCompanyConfiguration(87923);
        system.debug('actual '+result);
        
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetCompanyConfigurationResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
        ListCompanyConfigurationModel expectedServiceResponse = new ListCompanyConfigurationModel();
       expectedServiceResponse.result= (List<CompanyConfigurationModel>) System.JSON.deserialize(expectResponse, List<CompanyConfigurationModel>.class);
       expectedServiceResponse.StatusCode =200;
        system.debug('expecte ' +expectedServiceResponse);
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
        system.assertEquals(expectedServiceResponse.result[0].companyId , result.result[0].companyId);
        system.assertEquals(expectedServiceResponse.result[0].category , result.result[0].category);
        system.assertEquals(expectedServiceResponse.result[0].name , result.result[0].name);
        system.assertEquals(expectedServiceResponse.result[0].value , result.result[0].value);
        system.assertEquals(expectedServiceResponse.result[0].createdDate , result.result[0].createdDate);
        system.assertEquals(expectedServiceResponse.result[0].createdUserId , result.result[0].createdUserId);
        system.assertEquals(expectedServiceResponse.result[0].modifiedDate , result.result[0].modifiedDate);
        system.assertEquals(expectedServiceResponse.result[0].modifiedUserId , result.result[0].modifiedUserId);
     
    }
    
    @isTest 
    static void TC1004_SetCompanyConfiguration() {
  
        List<CompanyConfigurationModel> companyConfigList = new List<CompanyConfigurationModel>();
 
        CompanyConfigurationModel companyConfigModel = new CompanyConfigurationModel();
        companyConfigModel.companyId =0;
        companyConfigModel.category='AvaCertServiceConfig';
        companyConfigModel.name='Pending';
        companyConfigModel.value='company';
        
        companyConfigList.add(companyConfigModel);
        
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('SetCompanyConfigurationResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        ListCompanyConfigurationModel result = avataxCCInstance.SetCompanyConfiguration(87923,companyConfigList);
        system.debug('actual '+result);
        
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'SetCompanyConfigurationResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
        ListCompanyConfigurationModel expectedServiceResponse = new ListCompanyConfigurationModel();
       expectedServiceResponse.result= (List<CompanyConfigurationModel>) System.JSON.deserialize(expectResponse, List<CompanyConfigurationModel>.class);
       expectedServiceResponse.StatusCode =200;
        system.debug('expecte ' +expectedServiceResponse);
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
        system.assertEquals(expectedServiceResponse.result[0].companyId , result.result[0].companyId);
        system.assertEquals(expectedServiceResponse.result[0].category , result.result[0].category);
        system.assertEquals(expectedServiceResponse.result[0].name , result.result[0].name);
        system.assertEquals(expectedServiceResponse.result[0].value , result.result[0].value);
        system.assertEquals(expectedServiceResponse.result[0].createdDate , result.result[0].createdDate);
        system.assertEquals(expectedServiceResponse.result[0].createdUserId , result.result[0].createdUserId);
        system.assertEquals(expectedServiceResponse.result[0].modifiedDate , result.result[0].modifiedDate);
        system.assertEquals(expectedServiceResponse.result[0].modifiedUserId , result.result[0].modifiedUserId);
     
    }

    
    @isTest 
    static void TC1005_DeleteCompany() {
  
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateCompanyResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        avataxCCInstance.DeleteCompany(87923);
        }

     @isTest
    static void TC1006_QueryCompanies() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListTaxCodesByCompanyResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('2000169589', 'BA24F1C8A562CE90');

        String filter = '';
        String include = '';
        Integer top = 0;
        Integer skip = 0;
        String orderBy = '';
        
        FetchResultCompanyModel  result = client.QueryCompanies(include, filter, top, skip, orderBy);
        CompanyModel model = result.value[0]; 
    }
    
    
       @isTest 
    static void TC1007_CompanyInitialize() {
        
        CompanyInitializationModel companyInitialize = new CompanyInitializationModel();
		
         companyInitialize.name= 'BobArtisanPottery';
         companyInitialize.companyCode ='DEFAULT1';
         companyInitialize.taxpayerIdNumber='123456789';
         companyInitialize.line1='2000 Main Street';
         companyInitialize.city='Irvine';
         companyInitialize.region='CA';
         companyInitialize.postalCode='92614';
         companyInitialize.country='US';
         companyInitialize.firstName='Bob';
         companyInitialize.lastName='Example';
         companyInitialize.title='Owner';
         companyInitialize.email='bob@example.org';
         companyInitialize.phoneNumber='714 555-2121';
         companyInitialize.mobileNumber='714 555-12';
             
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetCompanyResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');
		avataxCCInstance.CompanyInitialize(companyInitialize);
        
    }
    @isTest 
    static void TC1007_GetCompanyConfiguration() {
        
        Integer companyId=12345;
        CompanyConfigurationModel companyConfig = new CompanyConfigurationModel();
	    companyConfig.category='Company';
        companyConfig.companyId =companyId;
        companyConfig.createdDate = system.today();
        companyConfig.createdUserId = 12345;
        companyConfig.modifiedDate = system.today();
        companyConfig.modifiedUserId = 12345;
        companyConfig.name = 'John';
        companyConfig.value = 'Company';

        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CompanyConfigResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');
		avataxCCInstance.GetCompanyConfiguration(12345);
        
    }


}