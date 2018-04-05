@IsTest
public class UtilitiesTest {

    @isTest 
    static void TC1000_Ping() {
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('PingResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
    Test.setMock(HttpCalloutMock.class, mock);
	
    StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'PingResponseResource' LIMIT 1 ];
    String body = sr.Body.toString();
        
    AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    client.WithSecurity('demo', 'demo');
 
    PingResultModel actual = client.Ping();
    PingResultModel expected = (PingResultModel) System.JSON.deserialize(body, PingResultModel.class);
    System.assertEquals(actual.authenticated, expected.authenticated);
    System.assertEquals(actual.authenticatedAccountId, expected.authenticatedAccountId);
    System.assertEquals(actual.authenticatedUserId, expected.authenticatedUserId);
    System.assertEquals(actual.authenticatedUserName, expected.authenticatedUserName);   
    System.assertEquals(actual.authenticationType, expected.authenticationType);
    System.assertEquals(actual.version, expected.version);
    }
    
   
    @isTest static void TC1001_GetMySubscription() {
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('GetMySubscriptionResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
    Test.setMock(HttpCalloutMock.class, mock);
    
    StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetMySubscriptionResponseResource' LIMIT 1 ];
    String body = sr.Body.toString();
        
    AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    client.WithSecurity('demo', 'demo');
 
    SubscriptionModel actual = client.GetMySubscription(ServiceTypeId.AvaTaxST);
    SubscriptionModel expected = (SubscriptionModel) System.JSON.deserialize(body, SubscriptionModel.class);
        
    System.assertEquals(actual.accountId, expected.accountId);
    System.assertEquals(actual.createdDate, expected.createdDate);
    System.assertEquals(actual.createdUserId, expected.createdUserId);
    System.assertEquals(actual.effectiveDate, expected.effectiveDate);   
    System.assertEquals(actual.endDate, expected.endDate);
    System.assertEquals(actual.modifiedDate, expected.modifiedDate);
    System.assertEquals(actual.id, expected.id);   
    System.assertEquals(actual.modifiedUserId, expected.modifiedUserId);
    System.assertEquals(actual.subscriptionDescription, expected.subscriptionDescription);
    System.assertEquals(actual.subscriptionTypeId, expected.subscriptionTypeId);
   
    }
    
     @isTest static void TC1002_GetSubscription() {
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('GetSubscriptionResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
    Test.setMock(HttpCalloutMock.class, mock);
    
    StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetSubscriptionResponseResource' LIMIT 1 ];
    String body = sr.Body.toString();
        
    AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    client.WithSecurity('demo', 'demo'); 
 
    FetchResultSubscriptionModel actual = client.GetSubscription();
    FetchResultSubscriptionModel expected = (FetchResultSubscriptionModel) System.JSON.deserialize(body, FetchResultSubscriptionModel.class);

    }
    
}