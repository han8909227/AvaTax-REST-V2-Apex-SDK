@isTest 
public class TaxRuleAPITest {

    @isTest 
    static void testCreateTaxRule() {
        List<TaxRuleModel> taxCodeList = new List<TaxRuleModel>();
        TaxRuleModel taxCode = new TaxRuleModel();
          taxCode.id= 56789;
    taxCode.companyId= 12345;
    taxCode.taxCode= 'FR020800';
    taxCode.stateFIPS= '04';
     taxCode.jurisName= 'MARICOPA';
     taxCode.jurisCode= '013';
    taxCode.jurisTypeId= jurisTypeId.CTY;
    taxCode.taxRuleTypeId= taxRuleTypeId.RateRule;
     taxCode.isAllJuris= true;
     taxCode.value= 0;
     taxCode.cap= 0;
 taxCode.threshold= 0;
 taxCode.options= '';
 taxCode.effectiveDate= System.today();
 taxCode.description= 'Freight';
    taxCode.countyFIPS= '013';
    taxCode.isSTPro= false;
     taxCode.country= 'US';
    taxCode.region= 'AZ';
 taxCode.taxSubType= 'ALL';
	taxCodeList.add(taxCode);        

        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateUsersResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        ListTaxRuleModel result = avataxCCInstance.CreateTaxRules(12345, taxCodeList)  ;
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'CreateUsersResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
        ListTaxRuleModel expectedList = new ListTaxRuleModel();
       expectedList.result = (List<TaxRuleModel>) System.JSON.deserialize(expectResponse, List<TaxRuleModel>.class);
       expectedList.StatusCode =200;
        
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
       }

    @isTest 
    static void testGetTaxRule() {
        List<TaxRuleModel> taxCodeList = new List<TaxRuleModel>();
        TaxRuleModel taxCode = new TaxRuleModel();
          taxCode.id= 56789;
    taxCode.companyId= 12345;
    taxCode.taxCode= 'FR020800';
    taxCode.stateFIPS= '04';
     taxCode.jurisName= 'MARICOPA';
     taxCode.jurisCode= '013';
    taxCode.jurisTypeId= jurisTypeId.CTY;
    taxCode.taxRuleTypeId= taxRuleTypeId.RateRule;
     taxCode.isAllJuris= true;
     taxCode.value= 0;
     taxCode.cap= 0;
 taxCode.threshold= 0;
 taxCode.options= '';
 taxCode.effectiveDate= System.today();
 taxCode.description= 'Freight';
    taxCode.countyFIPS= '013';
    taxCode.isSTPro= false;
     taxCode.country= 'US';
    taxCode.region= 'AZ';
 taxCode.taxSubType= 'ALL';
	taxCodeList.add(taxCode);        

        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetTaxRuleResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        TaxRuleModel result = avataxCCInstance.GetTaxRule(12345, 12345)  ;
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetTaxRuleResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
       TaxRuleModel expectedList = new TaxRuleModel();
       expectedList = (TaxRuleModel) System.JSON.deserialize(expectResponse, TaxRuleModel.class);
       expectedList.StatusCode =200;
        
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
       }
    
      @isTest 
    static void testUpdateTaxRule() {
        List<TaxRuleModel> taxCodeList = new List<TaxRuleModel>();
        TaxRuleModel taxCode = new TaxRuleModel();
          taxCode.id= 56789;
    taxCode.companyId= 12345;
    taxCode.taxCode= 'FR020800';
    taxCode.stateFIPS= '04';
     taxCode.jurisName= 'MARICOPA';
     taxCode.jurisCode= '013';
    taxCode.jurisTypeId= jurisTypeId.CTY;
    taxCode.taxRuleTypeId= taxRuleTypeId.RateRule;
     taxCode.isAllJuris= true;
     taxCode.value= 0;
     taxCode.cap= 0;
 taxCode.threshold= 0;
 taxCode.options= '';
 taxCode.effectiveDate= System.today();
 taxCode.description= 'Freight';
    taxCode.countyFIPS= '013';
    taxCode.isSTPro= false;
     taxCode.country= 'US';
    taxCode.region= 'AZ';
 taxCode.taxSubType= 'ALL';
	taxCodeList.add(taxCode);        

        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetTaxRuleResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        TaxRuleModel result = avataxCCInstance.UpdateTaxRule(12345, 12345,taxCode)  ;
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetTaxRuleResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
        
       TaxRuleModel expectedList = new TaxRuleModel();
       expectedList = (TaxRuleModel) System.JSON.deserialize(expectResponse, TaxRuleModel.class);
       expectedList.StatusCode =200;
        
        // Verify mock response is not null
        System.assertNotEquals(null, result,
            'The callout returned a null response.');
       }

      @isTest 
      static void testDeleteTaxRule() {
      
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetTaxRuleResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        avataxCCInstance.DeleteTaxRule(12345, 12345)  ;
     }
 
          @isTest 
    static void testQueryTaxRule() {


		String filter ='';
        String include ='';
        Integer top =0;
        Integer skip=0;
        String orderBy = '';
       
        List<TaxRuleModel> taxCodeList = new List<TaxRuleModel>();
        TaxRuleModel taxCode = new TaxRuleModel();
     
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('QueryTaxRuleResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        FetchResultTaxRuleModel result = new FetchResultTaxRuleModel();
        result = avataxCCInstance.QueryTaxRules(filter, include,top,skip,orderBy)  ;
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'QueryTaxRuleResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
    	List<TaxRuleModel> taxRule = result.value;    
 }

        @isTest 
    static void testListTaxRule() {


		String filter ='';
        String include ='';
        Integer top =0;
        Integer skip=0;
        String orderBy = '';
       
        List<TaxRuleModel> taxCodeList = new List<TaxRuleModel>();
        TaxRuleModel taxCode = new TaxRuleModel();
     
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('QueryTaxRuleResponseResource');
        mock.setStatusCode(200);
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);
        // Call method to test
        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        FetchResultTaxRuleModel result = new FetchResultTaxRuleModel();
        result = avataxCCInstance.ListTaxRules(12345,filter, include,top,skip,orderBy)  ;
        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'QueryTaxRuleResponseResource'
            LIMIT 1
        ];
        String expectResponse = sr.Body.toString();
    	List<TaxRuleModel> taxRule = result.value;    
 }
    
}