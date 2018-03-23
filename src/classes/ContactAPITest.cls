@isTest
public class ContactAPITest {

        @isTest
    static void TC1000_GetContact() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetContactResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        ContactModel  result = client.GetContact(companyId, id) ;
    }

        
    @isTest
    static void TC1001_CreateContacts() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateContactResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
               
        Integer id = 0;
		
        List<ContactModel> contactRequestList = new List<ContactModel>();
        
        ContactModel contactRequest = new ContactModel();
        contactRequest.city ='BI';
        contactRequest.companyId =companyId;
        contactRequest.contactCode = 'test';
        contactRequest.country ='US';
        contactRequest.createdDate =system.today();
        contactRequest.createdUserId = 12345;
        contactRequest.email ='contact@contact.com';
        contactRequest.fax ='12345';
        contactRequest.firstName ='John';
        contactRequest.id =id;
        contactRequest.lastName ='John';
        contactRequest.line1 ='900';
        contactRequest.line2 ='wi';
        contactRequest.line3 ='BI';
        contactRequest.middleName ='Mi';
        contactRequest.mobile ='5555555555555';
        contactRequest.modifiedDate = system.today();
        contactRequest.modifiedUserId =12345;
        contactRequest.phone ='12345';
        contactRequest.postalCode ='91010';
        contactRequest.region ='WA';
        contactRequest.title ='Contact';

        contactRequestList.add(contactRequest);    
        client.CreateContacts(companyId, contactRequestList);
        
    }
    
     @isTest
    static void TC1002_DeleteContact() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('DeleteContactResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 291170;
                
        client.DeleteContact(companyId, id) ;
        
    }
    
       @isTest
    static void TC1003_ListContactsByCompany() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('FetchContactByCompanyResponseResource');
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
        
        FetchResultContactModel  result = client.ListContactsByCompany(companyId, filter, include, top, skip, orderBy);
        ContactModel model = result.value[0]; 
    }
    
    
     @isTest
    static void TC1004_QueryContact() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('QueryContactResponseResource');
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
        
        FetchResultContactModel  result = client.QueryContacts(filter, include, top, skip, orderBy);
        ContactModel model = result.value[0]; 
    }
   
    
    
     @isTest
    static void TC1005_UpdateContact() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetContactResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        
        Integer companyId = 302131;
               
        Integer id = 0;
        
       ContactModel contactRequest = new ContactModel();
        contactRequest.city ='BI';
        contactRequest.companyId =companyId;
        contactRequest.contactCode = 'test';
        contactRequest.country ='US';
        contactRequest.createdDate =system.today();
        contactRequest.createdUserId = 12345;
        contactRequest.email ='contact@contact.com';
        contactRequest.fax ='12345';
        contactRequest.firstName ='John';
        contactRequest.id =id;
        contactRequest.lastName ='John';
        contactRequest.line1 ='900';
        contactRequest.line2 ='wi';
        contactRequest.line3 ='BI';
        contactRequest.middleName ='Mi';
        contactRequest.mobile ='5555555555555';
        contactRequest.modifiedDate = system.today();
        contactRequest.modifiedUserId =12345;
        contactRequest.phone ='12345';
        contactRequest.postalCode ='91010';
        contactRequest.region ='WA';
        contactRequest.title ='Contact';
           
        ContactModel  result = client.UpdateContact(companyId, id, contactRequest);
    }

}