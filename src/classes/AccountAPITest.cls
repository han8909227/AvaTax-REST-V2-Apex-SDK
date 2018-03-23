@isTest
public class AccountAPITest {
	
    @isTest static void TC1000_ActivateAccountCallout() {
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('ActivateAccountResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
    Test.setMock(HttpCalloutMock.class, mock);
	  
    AvaTaxClient avataxClientInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    AvaTaxClient creds = avataxClientInstance.WithSecurity('demo', 'demo');
 	
    ActivateAccountModel activateAccountRequest = new ActivateAccountModel();
    activateAccountRequest.acceptAvalaraTermsAndConditions = true;
    activateAccountRequest.haveReadAvalaraTermsAndConditions = true;
        
    AccountModel activateAccountActualResponse = avataxClientInstance.activateAccount(12345, null, activateAccountRequest);
    String activateAccountExpectedValue = '{"id": 12345,"name": "Test Account","effectiveDate": "2017-11-19T00:00:00-08:00","accountStatusId": "Test"}';
    AccountModel activateAccountExpectedResponse = (AccountModel) System.JSON.deserialize(activateAccountExpectedValue, AccountModel.class);
    System.assertEquals(activateAccountActualResponse.accountStatusId, activateAccountExpectedResponse.accountStatusId);
    System.assertEquals(activateAccountActualResponse.createdDate, activateAccountExpectedResponse.createdDate);
    System.assertEquals(activateAccountActualResponse.createdUserId, activateAccountExpectedResponse.createdUserId);
    System.assertEquals(activateAccountActualResponse.crmid, activateAccountExpectedResponse.crmid);   
    System.assertEquals(activateAccountActualResponse.effectiveDate, activateAccountExpectedResponse.effectiveDate);
    System.assertEquals(activateAccountActualResponse.modifiedDate, activateAccountExpectedResponse.modifiedDate);
    System.assertEquals(activateAccountActualResponse.endDate, activateAccountExpectedResponse.endDate);
    System.assertEquals(activateAccountActualResponse.modifiedUserId, activateAccountExpectedResponse.modifiedUserId);
    System.assertEquals(activateAccountActualResponse.id, activateAccountExpectedResponse.id);
    System.assertEquals(activateAccountActualResponse.name, activateAccountExpectedResponse.name);   
    }
    
    @isTest 
    static void TC1001_testResetLicenseKeyCallout() {
    
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('ResetLicenseKeyResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
    Test.setMock(HttpCalloutMock.class, mock);
	
    AvaTaxClient avataxClientInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    AvaTaxClient creds = avataxClientInstance.WithSecurity('demo', 'demo');
 	
    ResetLicenseKeyModel resetLicenseKey = new ResetLicenseKeyModel();
    resetLicenseKey.accountId =2000235830;
    resetLicenseKey.confirmResetLicenseKey= true;
        
    LicenseKeyModel activateResetLicenseActualResponse = avataxClientInstance.accountResetLicenseKey(2000235830, resetLicenseKey);
    String activateResetLicenseValue = '{"accountId": 123456789,"privateLicenseKey": "742A02AA463CDE741E932EC365360CA3CF378BD9","httpRequestHeader": "Basic MTIzNDU2Nzg5Ojc0MkEwMkFBNDYzQ0RFNzQxRTkzMkVDMzY1MzYwQ0EzQ0YzNzhCRDk="}';
    LicenseKeyModel activateResetLicenseExpectedResponse = (LicenseKeyModel) System.JSON.deserialize(activateResetLicenseValue, LicenseKeyModel.class);
  	
    System.assertEquals(activateResetLicenseActualResponse.accountId, activateResetLicenseExpectedResponse.accountId);
    System.assertEquals(activateResetLicenseActualResponse.httpRequestHeader, activateResetLicenseExpectedResponse.httpRequestHeader);
    System.assertEquals(activateResetLicenseActualResponse.privateLicenseKey, activateResetLicenseExpectedResponse.privateLicenseKey);
  }
	
    @isTest 
    static void TC1002_AccountConfigurationCallout() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('AccountConfigResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
            
        Test.setMock(HttpCalloutMock.class, mock);
        
            
        AvaTaxClient avataxClientInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxClientInstance.WithSecurity('demo', 'demo');
            
        ListAccountConfigurationModel accountConfigActualResponse = avataxClientInstance.getAccountConfiguration(2000235830);
        
        String accountConfigExpectedValue = '[{"accountId": 2000235830,"category": "AddressServiceConfig","name": "IsUpperCase","value": "False","createdDate": "0001-01-01T00:00:00","createdUserId": 0,"modifiedDate": "0001-01-01T00:00:00","modifiedUserId": 0 }]';
        
        ListAccountConfigurationModel accountConfigExpectedResponse=new ListAccountConfigurationModel();
        accountConfigExpectedResponse.result= (List<AccountConfigurationModel>)System.JSON.deserialize(accountConfigExpectedValue, List<AccountConfigurationModel>.class);
        
        System.assertEquals(accountConfigActualResponse.result[0].category, accountConfigExpectedResponse.result[0].category);
        System.assertEquals(accountConfigActualResponse.result[0].createdDate, accountConfigExpectedResponse.result[0].createdDate);
        System.assertEquals(accountConfigActualResponse.result[0].createdUserId, accountConfigExpectedResponse.result[0].createdUserId);      
        System.assertEquals(accountConfigActualResponse.result[0].modifiedDate, accountConfigExpectedResponse.result[0].modifiedDate);
        System.assertEquals(accountConfigActualResponse.result[0].modifiedUserId, accountConfigExpectedResponse.result[0].modifiedUserId);
        System.assertEquals(accountConfigActualResponse.result[0].name, accountConfigExpectedResponse.result[0].name);      
        System.assertEquals(accountConfigActualResponse.result[0].value, accountConfigExpectedResponse.result[0].value);      
        System.assertEquals(accountConfigActualResponse.result[0].accountId, accountConfigExpectedResponse.result[0].accountId);      
    }
 
    @isTest static void TC1003_GetAccountCallout() {
    	StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetAccountResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
        
        AvaTaxClient avataxClientInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxClientInstance.WithSecurity('demo', 'demo');
       
    	AccountModel activateAccountActualResponse = avataxClientInstance.getAccount(2000235830,null);
    
        String accountConfigExpectedValue = '{"id": 2000235830,"name": "Ashish Bakhtar","effectiveDate": "2017-09-28T00:00:00","endDate": "2019-11-28T00:00:00","accountStatusId": "Test","createdDate": "2017-09-28T05:21:33.223","createdUserId": 6865,"modifiedDate": "2017-11-02T14:21:53.337","modifiedUserId": 301675}';
    
    	AccountModel activateAccountExpectedResponse = (AccountModel)System.JSON.deserialize(accountConfigExpectedValue, AccountModel.class);
    
    	System.assertEquals(activateAccountActualResponse.accountStatusId, activateAccountExpectedResponse.accountStatusId);
        System.assertEquals(activateAccountActualResponse.createdDate, activateAccountExpectedResponse.createdDate);
        System.assertEquals(activateAccountActualResponse.createdUserId, activateAccountExpectedResponse.createdUserId);
        System.assertEquals(activateAccountActualResponse.crmid, activateAccountExpectedResponse.crmid);   
        System.assertEquals(activateAccountActualResponse.effectiveDate, activateAccountExpectedResponse.effectiveDate);
        System.assertEquals(activateAccountActualResponse.modifiedDate, activateAccountExpectedResponse.modifiedDate);
        System.assertEquals(activateAccountActualResponse.endDate, activateAccountExpectedResponse.endDate);
        System.assertEquals(activateAccountActualResponse.modifiedUserId, activateAccountExpectedResponse.modifiedUserId);
        System.assertEquals(activateAccountActualResponse.id, activateAccountExpectedResponse.id);
        System.assertEquals(activateAccountActualResponse.name, activateAccountExpectedResponse.name);   
    }
 
    @isTest 
    static void TC1004_SetAccountConfiguration() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('SetAccountConfigHttpCalloutMock');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);

        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'SetAccountConfigHttpCalloutMock' LIMIT 1 ];
        String body = sr.Body.toString();
        
        List<AccountConfigurationModel> accModelList = new List<AccountConfigurationModel>();
        AccountConfigurationModel model = new AccountConfigurationModel();
        model.accountId = 0;
        model.category = 'TaxServiceConfig';
        model.name='MaxLines';
        model.value = '1000';
        accModelList.add(model);
        ListAccountConfigurationModel actualResult = avataxCCInstance.SetAccountConfiguration(2009987077,accModelList);
       
        List<AccountConfigurationModel> expectedAccount = (List<AccountConfigurationModel>)System.JSON.deserialize(body, List<AccountConfigurationModel>.class);
    	ListAccountConfigurationModel expectedResult = new ListAccountConfigurationModel();
        expectedResult.result = expectedAccount;
        System.assertEquals(String.valueOf(expectedResult.result),String.valueOf(actualResult.result));   
    }
}