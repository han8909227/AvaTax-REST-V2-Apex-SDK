@isTest
private class TaxCodeAPITest {
    @isTest
    static void TC1000_CreateTaxCodes() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateTaxCodesResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        List<TaxCodeModel> taxCodeList = new List<TaxCodeModel>();
        TaxCodeModel taxCode = new TaxCodeModel();
        taxCode.id = 56789;
        taxCode.companyId = 12345;
        taxCode.taxCode = 'PS081282';
        taxCode.taxCodeTypeId = 'P';
        taxCode.description = 'Yarn';
        taxCode.parentTaxCode = 'PS080100';
        taxCode.isPhysical = true;
        taxCode.goodsServiceCode = 0;
        taxCode.entityUseCode = '';
        taxCode.isActive = true;
        taxCode.isSSTCertified = false;        
                        
        ListTaxCodeModel  result = client.CreateTaxCodes(companyId, taxCodeList);
    }
    
    @isTest
    static void TC1001_DeleteTaxCode() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('DeleteTaxCodeErrorResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer taxCodeid = 291170;
                
        client.DeleteTaxCode(companyId,taxCodeid);
        
    }
    
    @isTest
    static void TC1002_GetTaxCode() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('TaxCodeModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer taxCodeid = 67574;
        TaxCodeModel  result = client.GetTaxCode(companyId, taxCodeid);
    }
    
    @isTest
    static void TC1003_ListTaxCodesByCompany() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListTaxCodesByCompanyResponseResource');
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
        
        FetchResultTaxCodeModel  result = client.ListTaxCodesByCompany(companyId, filter, include, top, skip, orderBy);
        TaxCodeModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1004_QueryTaxCodes() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListTaxCodesByCompanyResponseResource');
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
        
        FetchResultTaxCodeModel  result = client.QueryTaxCodes(filter, include, top, skip, orderBy);
        TaxCodeModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1005_UpdateTaxCode() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('TaxCodeModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        TaxCodeModel taxCode = new TaxCodeModel();
        taxCode.id = 56789;
        taxCode.companyId = 12345;
        taxCode.taxCode = 'PS081282';
        taxCode.taxCodeTypeId = 'P';
        taxCode.description = 'Yarn';
        taxCode.parentTaxCode = 'PS080100';
        taxCode.isPhysical = true;
        taxCode.goodsServiceCode = 0;
        taxCode.entityUseCode = '';
        taxCode.isActive = true;
        taxCode.isSSTCertified = false;        
                
        TaxCodeModel  result = client.UpdateTaxCode(companyId, id, taxCode);
    }
}