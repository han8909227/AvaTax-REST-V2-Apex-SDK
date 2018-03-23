@isTest
private class SettingsAPITest {
    @isTest
    static void TC1000_CreateSettings() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateSettingsResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        List<SettingModel> settingList = new List<SettingModel>();
        SettingModel setting = new SettingModel();
        setting.id = 56789;
        setting.companyId = 302131;
        setting.setsm = 'ItemToRemember';
        setting.namesm = 'Texas';
        setting.value = 'Alamo';
                        
        ListSettingModel  result = client.CreateSettings(companyId, settingList);
    }
    
    @isTest
    static void TC1001_DeleteSetting() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateSettingsResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer settingid = 22300;
                
        client.DeleteSetting(companyId,settingid);
        
    }
    
    @isTest
    static void TC1002_GetSetting() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('SettingModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer settingid = 67574;
        SettingModel  result = client.GetSetting(companyId, settingid);
    }
    
    @isTest
    static void TC1003_ListSettingsByCompany() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListSettingsByCompanyResponseResource');
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
        
        FetchResultSettingModel  result = client.ListSettingsByCompany(companyId, filter, include, top, skip, orderBy);
        SettingModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1004_QuerySettings() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListSettingsByCompanyResponseResource');
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
        
        FetchResultSettingModel  result = client.QuerySettings(filter, include, top, skip, orderBy);
        SettingModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1005_UpdateSetting() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('SettingModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer id = 0;
        SettingModel setting = new SettingModel();
        setting.id = 56789;
        setting.companyId = 302131;
        setting.setsm = 'ItemToRemember';
        setting.namesm = 'Texas';
        setting.value = 'Alamo';     
                
        SettingModel  result = client.UpdateSetting(companyId, id, setting);
    }
}