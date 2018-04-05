@isTest
private class LocationAPITest {
    @isTest
    static void TC1000_CreateLocations() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateLocationsResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        List<LocationModel> locationList = new List<LocationModel>();
        LocationModel location = new LocationModel();
        location.id = 56789;
        location.companyId = 302131;
        location.locationCode = 'DEFAULT';
        location.description = 'Bob\'s Artisan Pottery';
        location.addressTypeId = AddressTypeID.Location;
        location.addressCategoryId = AddressCategoryid.MainOffice;
        location.line1 = '2000 Main Street';
        location.city = 'Irvine';
        location.county = 'Orange';
        location.region = 'CA';
        location.postalCode = '92614';
        location.country = 'US';
        location.isDefault = true;
        location.isRegistered = true;
        location.dbaName= 'Bob\'s Artisan Pottery';
        location.outletName= 'Main Office';
        location.registeredDate = datetime.now();
                        
        ListLocationModel  result = client.CreateLocations(companyId, locationList);
    }
    
    @isTest
    static void TC1001_DeleteLocation() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('LocationModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer locationid = 291170;
                
        client.DeleteLocation(companyId,locationid);
        
    }
    
    @isTest
    static void TC1002_GetLocation() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('LocationModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer locationid = 291170;
        String include = '';        
        LocationModel  result = client.GetLocation(companyId, locationid, include);
    }
    
    @isTest
    static void TC1003_ListLocationsByCompany() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListLocationsByCompanyResponseResource');
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
        
        FetchResultLocationModel  result = client.ListLocationsByCompany(companyId, filter, include, top, skip, orderBy);
        LocationModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1004_QueryLocations() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListLocationsByCompanyResponseResource');
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
        
        FetchResultLocationModel  result = client.QueryLocations(filter, include, top, skip, orderBy);
        LocationModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1005_UpdateLocation() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('LocationModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        LocationModel location = new LocationModel();
        location.id = 56789;
        location.companyId = 302131;
        location.locationCode = 'CERMUG';
        location.description = 'Ceramic Mug';
                
        LocationModel  result = client.UpdateLocation(companyId, id, location);
    }
}