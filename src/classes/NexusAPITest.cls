@isTest
private class NexusAPITest {
    @isTest
    static void TC1000_CreateNexus() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateNexussResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;

        List<NexusModel> nexusList = new List<NexusModel>();
        NexusModel nexus = new NexusModel();
        nexus.id =  0;
        nexus.companyId =  0;
        nexus.country =  'US';
        nexus.region =  'CA';
        nexus.jurisTypeId =  juristypeid.STA;
        nexus.jurisCode =  '06';
        nexus.jurisName =  'CALIFORNIA';
        nexus.shortName =  'CA';
        nexus.signatureCode =  '';
        nexus.stateAssignedNo =  '';
        nexus.nexusTypeId =  nexustypeid.SalesOrSellersUseTax;
        nexus.hasLocalNexus =  true;
        nexus.hasPermanentEstablishment =  true;
        nexus.streamlinedSalesTax =  false;
        nexus.createdDate =  datetime.now();
        nexus.createdUserId =  0;
        nexus.modifiedDate =  datetime.now();
        nexus.modifiedUserId =  0;
        nexus.nexusTaxTypeGroup = 'SalesAndUse'; 
                        
        ListNexusModel  result = client.CreateNexus(companyId, nexusList);
    }
    
    @isTest
    static void TC1001_DeleteNexus() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateNexussResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer nexusid = 18028808;
                
        client.DeleteNexus(companyId,nexusid);
        
    }
    
    @isTest
    static void TC1002_GetNexus() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('NexusModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer nexusid = 18028808;
        NexusModel  result = client.GetNexus(companyId, nexusid);
    }
    
    @isTest
    static void TC1003_ListNexussByCompany() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListNexussByCompanyResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        String filter = '';
        String include = '';
        Integer top = 0;
        Integer skip = 0;
        String orderBy = '';
        
        FetchResultNexusModel  result = client.ListNexusByCompany(companyId, filter, include, top, skip, orderBy);
        NexusModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1004_QueryNexuss() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListNexussByCompanyResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        String filter = '';
        String include = '';
        Integer top = 0;
        Integer skip = 0;
        String orderBy = '';
        
        FetchResultNexusModel  result = client.QueryNexus(filter, include, top, skip, orderBy);
        NexusModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1005_UpdateNexus() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('NexusModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 11373189;
        NexusModel nexus = new NexusModel();
        nexus.id =  0;
        nexus.companyId =  0;
        nexus.country =  'US';
        nexus.region =  'CA';
        nexus.jurisTypeId =  juristypeid.STA;
        nexus.jurisCode =  '06';
        nexus.jurisName =  'CALIFORNIA';
        nexus.shortName =  'CA';
        nexus.signatureCode =  '';
        nexus.stateAssignedNo =  '';
        nexus.nexusTypeId =  nexustypeid.SalesOrSellersUseTax;
        nexus.hasLocalNexus =  true;
        nexus.hasPermanentEstablishment =  true;
        nexus.streamlinedSalesTax =  false;
        nexus.createdDate =  datetime.now();
        nexus.createdUserId =  0;
        nexus.modifiedDate =  datetime.now();
        nexus.modifiedUserId =  0;
        nexus.nexusTaxTypeGroup = 'SalesAndUse'; 
                
        NexusModel  result = client.UpdateNexus(companyId, id, nexus);
    }
}