@IsTest
public class SubscriptionAPITest {
    
    @isTest 
    static void TC1000_GetSubscription() {
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('GetMySubscriptionResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
    Test.setMock(HttpCalloutMock.class, mock);
    
    StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetSubscriptionResponseResource' LIMIT 1 ];
    String body = sr.Body.toString();
        
    AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    client.WithSecurity('demo', 'demo');
 	Integer accountId = demo;
    Integer id = 457655;    
    SubscriptionModel actual = client.GetSubscription(accountId,id);
    SubscriptionModel expected = (SubscriptionModel) System.JSON.deserialize(body, SubscriptionModel.class);

    }
    
    @isTest 
    static void TC1000_ListSubscriptionsByAccount() {
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('GetSubscriptionResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
    Test.setMock(HttpCalloutMock.class, mock);
    
    StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetSubscriptionResponseResource' LIMIT 1 ];
    String body = sr.Body.toString();
        
    AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    client.WithSecurity('demo', 'demo');
 	Integer accountId = demo;
    String filter = '';
    String include = '';
    Integer top = 0;
    Integer skip = 0;
    String orderBy = '';   
    FetchResultSubscriptionModel actual = client.ListSubscriptionsByAccount(accountId, filter, top, skip, orderBy);
    FetchResultSubscriptionModel expected = (FetchResultSubscriptionModel) System.JSON.deserialize(body, FetchResultSubscriptionModel.class);
	SubscriptionModel model = actual.value[0]; 
    }
    
    @isTest 
    static void TC1000_QuerySubscriptions() {
    StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
    mock.setStaticResource('GetSubscriptionResponseResource');
    mock.setStatusCode(200);
    mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
    Test.setMock(HttpCalloutMock.class, mock);
    
    StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetSubscriptionResponseResource' LIMIT 1 ];
    String body = sr.Body.toString();
        
    AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
    client.WithSecurity('demo', 'demo');
 	Integer accountId = demo;
    String filter = '';
    String include = '';
    Integer top = 0;
    Integer skip = 0;
    String orderBy = '';   
    FetchResultSubscriptionModel actual = client.QuerySubscriptions(filter, top, skip, orderBy);
    FetchResultSubscriptionModel expected = (FetchResultSubscriptionModel) System.JSON.deserialize(body, FetchResultSubscriptionModel.class);
	SubscriptionModel model = actual.value[0]; 
    }
}