@isTest
private class ItemAPITest {
    @isTest
    static void TC1000_CreateItems() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateItemsResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        List<ItemModel> itemList = new List<ItemModel>();
        ItemModel item = new ItemModel();
        item.id = 56789;
        item.companyId = 302131;
        item.itemCode = 'CERMUG';
        item.taxCode = 'P0000000';
        item.description = 'Ceramic Mug';
        itemList.add(item);
                
        ListItemModel  result = client.CreateItems(companyId, itemList);
    }
    
    @isTest
    static void TC1001_DeleteItem() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetItemResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer itemCode = 0;
                
        client.DeleteItem(companyId,itemCode);
        
    }
    
    @isTest
    static void TC1002_GetItem() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetItemResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
                
        ItemModel  result = client.GetItem(companyId, id);
    }
    
    @isTest
    static void TC1003_ListItemsByCompany() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListItemsByCompanyResponseResource');
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
        
        FetchResultItemModel  result = client.ListItemsByCompany(companyId, filter, include, top, skip, orderBy);
        ItemModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1004_QueryItems() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('QueryItemResponseResource');
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
        
        FetchResultItemModel  result = client.QueryItems(filter, include, top, skip, orderBy);
        ItemModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1002_UpdateItem() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetItemResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        ItemModel item = new ItemModel();
        item.id = 56789;
        item.companyId = 302131;
        item.itemCode = 'CERMUG';
        item.taxCode = 'P0000000';
        item.description = 'Ceramic Mug';
                
        ItemModel  result = client.UpdateItem(companyId, id, item);
    }
}