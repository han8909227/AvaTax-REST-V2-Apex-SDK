@isTest
private class CustomerAPITest {
    @isTest
    static void TC1000_CreateCustomer() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateCustomersResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity(demo, 'demo');

        Integer companyId = 302131;
        List<CustomerModel> customerList = new List<CustomerModel>();
        CustomerModel customer = new CustomerModel();
        customer.id = 1;
        customer.companyId = 237011;
        customer.customerCode = '123456789';
        customer.alternateId = '987654321';
        customer.name = 'Dr. Bob Example';
        customer.attnName = 'Attn: Receiving';
        customer.line1 = '645 Main Street';
        customer.city = 'Irvine';
        customer.postalCode = '92614';
        customer.phoneNumber = '(949) 555-1212';
        customer.faxNumber = '949.555.1213';
        customer.emailAddress = 'dr.bob.example@example.org';
        customer.contactName = 'Alice Smith';
        customer.lastTransaction = DateTime.now();
        customer.country = 'US';
        customer.region = 'CA';
        
        FetchResultCustomerModel result = client.CreateCustomers(companyId,customerList);
        
    }
    @isTest
    static void TC1001_DeleteCustomer() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CustomerModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        String customerCode = '123456789';
                
        client.DeleteCustomer(companyId,customerCode);
        
    }
    @isTest
    static void TC1002_GetCustomer() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CustomerModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        String customerCode = '123456789';
        String include = '';
                
        CustomerModel result = client.GetCustomer(companyId,customerCode,include);
        
    }
    @isTest
    static void TC1003_UpdateCustomer() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CustomerModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        String customerCode = '123456789';
        CustomerModel customer = new CustomerModel();
        customer.id = 1;
        customer.companyId = 237011;
        customer.customerCode = '123456789';
        customer.alternateId = '987654321';
        customer.name = 'Dr. Bob Example';
        customer.attnName = 'Attn: Receiving';
        customer.line1 = '645 Main Street';
        customer.city = 'Irvine';
        customer.postalCode = '92614';
        customer.phoneNumber = '(949) 555-1212';
        customer.faxNumber = '949.555.1213';
        customer.emailAddress = 'dr.bob.example@example.org';
        customer.contactName = 'Alice Smith';
        customer.lastTransaction = DateTime.now();
        customer.country = 'US';
        customer.region = 'CA';
        
        CustomerModel result = client.UpdateCustomer(companyId,customerCode,customer);        
    }
    @isTest 
    static void TC1004_ListCertificatesForCustomer() {
        
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListCertificatesForCustomerResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        String customerCode = 'e915f004-baaf-4982-a3c6-cb452ba69185'; 
        String include = '';
        String filter = '';
        Integer top = 0;
        Integer skip = 0;
        String orderBy = '';
        
        FetchResultCertificateModel result = client.ListCertificatesForCustomer(companyId, customerCode, include, filter, top, skip, orderBy);        
   		CertificateModel certificate = result.value[0];
    }
    @isTest 
    static void TC1005_ListValidCertificatesForCustomer() {
        
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListValidCertificatesForCustomerResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        String customerCode = 'e04e707d-5072-4b75-8bcf-71216659b23d';
        String country = '';
        String region = '';
       
        StaticResource sr = [SELECT Body FROM StaticResource WHERE Name = 'ListValidCertificatesForCustomerResponseResource' LIMIT 1];
        String body = sr.Body.toString();

        ExemptionStatusModel expected = (ExemptionStatusModel) System.JSON.deserialize(body, ExemptionStatusModel.class);
        ExemptionStatusModel actual = client.ListValidCertificatesForCustomer(companyId, customerCode, country, region); 
		System.assertEquals(expected.status, actual.status);
    }
    @isTest
    static void TC1006_LinkCustomersToCertificate() {
        
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('LinkCustomersToCertificateResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer Id = 0;
        LinkCustomersModel model = new LinkCustomersModel();
        List<String> customerCodes = new List<String>();
        customerCodes.add('123');
        
        model.customers = customerCodes;
        FetchResultCustomerModel actual = client.LinkCustomersToCertificate(companyId, Id, model); 
        CustomerModel customer = actual.value[0];
    }
    @isTest
    static void TC1007_UnlinkCustomersFromCertificate() {
        
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('LinkCustomersToCertificateResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer Id = 0;
        LinkCustomersModel model = new LinkCustomersModel();
        List<String> customerCodes = new List<String>();
        customerCodes.add('123');
        
        model.customers = customerCodes;
        FetchResultCustomerModel actual = client.UnlinkCustomersFromCertificate(companyId, Id, model); 
        CustomerModel customer = actual.value[0];
    }
}