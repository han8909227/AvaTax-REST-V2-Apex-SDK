@isTest
private class AddressAPITest {

    @isTest
    static void TC1012_ValidateAddressTestWS() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetCAAddressResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);

        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        avataxCCInstance.WithSecurity('demo', 'demo');

        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetCAAddressResponseResource' LIMIT 1 ];
        String body = sr.Body.toString();

		AddressInfo addressInfo = new AddressInfo();
        addressInfo.city ='';
        addressInfo.country ='';
        addressInfo.latitude =12345;
        addressInfo.line1 ='';
        addressInfo.line2 ='';
        addressInfo.line3 ='';
        addressInfo.longitude =12345;
        addressInfo.postalCode ='';
        addressInfo.region ='';
        
        
        CoordinateInfo coordinate = new CoordinateInfo();
        coordinate.latitude=12345;
        coordinate.longitude=12345;
        
        
        AddressValidationInfo addValInfo = new AddressValidationInfo();
        addValInfo.city='';
        addValInfo.country='';
        addValInfo.latitude=12345;
        addValInfo.line1='';
        addValInfo.line2='';
        addValInfo.line3='';
        addValInfo.longitude=12345;
        addValInfo.postalCode='';
        addValInfo.region='';
        addValInfo.textCase=textCase.Mixed;
     
        AddressResolutionModel result = avataxCCInstance.ResolveAddress('5412 IMPERIAL ST', '', '', 'BURNABY', 'BC', 'V5J 1E6', 'CA', TextCase.Upper, 0, 0);
        
        result.address = addressInfo;
        result.coordinates = coordinate;
        System.assertNotEquals(null, result, 'The callout returned a null response.');

        AddressResolutionModel expectedAddress = (AddressResolutionModel) System.JSON.deserialize(body, AddressResolutionModel.class);
        System.assertEquals(expectedAddress.validatedAddresses[0].addressType, result.validatedAddresses[0].addressType);
        System.assertEquals(expectedAddress.validatedAddresses[0].line1, result.validatedAddresses[0].line1);
        System.assertEquals(expectedAddress.validatedAddresses[0].line2, result.validatedAddresses[0].line2);
        System.assertEquals(expectedAddress.validatedAddresses[0].line3, result.validatedAddresses[0].line3);
        System.assertEquals(expectedAddress.validatedAddresses[0].city, result.validatedAddresses[0].city);
        System.assertEquals(expectedAddress.validatedAddresses[0].region, result.validatedAddresses[0].region);
        System.assertEquals(expectedAddress.validatedAddresses[0].postalCode, result.validatedAddresses[0].postalCode);
        System.assertEquals(expectedAddress.validatedAddresses[0].country, result.validatedAddresses[0].country);
        System.assertEquals(expectedAddress.validatedAddresses[0].latitude, result.validatedAddresses[0].latitude);
        System.assertEquals(expectedAddress.validatedAddresses[0].longitude, result.validatedAddresses[0].longitude);
        System.assertEquals(expectedAddress.resolutionQuality, result.resolutionQuality);
        System.assertEquals(expectedAddress.taxAuthorities[0].avalaraId, result.taxAuthorities[0].avalaraId);
        System.assertEquals(expectedAddress.taxAuthorities[0].jurisdictionName, result.taxAuthorities[0].jurisdictionName);
        System.assertEquals(expectedAddress.taxAuthorities[0].jurisdictionType, result.taxAuthorities[0].jurisdictionType);
        System.assertEquals(expectedAddress.taxAuthorities[0].signatureCode, result.taxAuthorities[0].signatureCode);

    }

    @isTest 
    static void TC1013_ValidateAddressTestWS() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetUSMilitaryAddressResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);

        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        StaticResource sr = [SELECT Id, Body FROM StaticResource WHERE Name = 'GetUSMilitaryAddressResponseResource' LIMIT 1 ];
        String body = sr.Body.toString();
        
        AddressResolutionModel result = avataxCCInstance.ResolveAddress('202ND MILITARY POLICE GROUP (CID)', '', '', 'UNIT 23152 APO', 'AE', '09227', 'US', TextCase.Upper, 0, 0);
        AddressResolutionModel expectedAddress = (AddressResolutionModel) System.JSON.deserialize(body, AddressResolutionModel.class);

        System.assertEquals(expectedAddress.resolutionQuality, result.resolutionQuality);
        System.assertEquals(expectedAddress.messages[0].summary, result.messages[0].summary);
        System.assertEquals(expectedAddress.messages[0].details, result.messages[0].details);
        System.assertEquals(expectedAddress.messages[0].refersTo, result.messages[0].refersTo);
        System.assertEquals(expectedAddress.messages[0].severity, result.messages[0].severity);
        System.assertEquals(expectedAddress.messages[0].source, result.messages[0].source);

    }

    @isTest 
    static void TC1015_resolveAddressPost() {
        // Set mock callout class 
   
             StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('USAddressResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, mock);

        
        
        
      //  Test.setMock(HttpCalloutMock.class, new USAddressValidationPostHTTPCalloutMock());
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        String addressValidationPostMethodResponse = '{"address":{"line1":"900 winslow way e","city":"BI","region":"WA","country":"US","postalCode":"98100"},"validatedAddresses":[{"addressType":"UnknownAddressType","line1":"900 winslow way e","line2":"","line3":"","city":"BI","region":"WA","country":"US","postalCode":"98100"}],"resolutionQuality":"External","messages":[{"summary":"The city could not be determined.","details":"The city could not be found or determined from postal code.","refersTo":"Address.City","severity":"Error","source":"Avalara.AvaTax.Services.Address"},{"summary":"Address not geocoded.","details":"Address cannot be geocoded.","refersTo":"Address","severity":"Error","source":"Avalara.AvaTax.Services.Address"}]}';

        AddressValidationInfo addReq = new AddressValidationInfo();
        addReq.line1 = '900 winslow way e';
        addReq.city = 'BI';
        addReq.region = 'WA';
        addReq.postalCode = '98100';
        addReq.country = 'US';

        AvaTaxClient avataxCCInstance = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        AvaTaxClient creds = avataxCCInstance.WithSecurity('demo', 'demo');

        AddressResolutionModel result = avataxCCInstance.resolveAddressPost(addReq);

        // Verify that the response received contains fake values
        String actualValue = String.valueOf(result);
      //  String expectedValue = String.ValueOf((AddressResolutionModel) System.JSON.deserialize(addressValidationPostMethodResponse, AddressResolutionModel.class));
        AddressResolutionModel expectedServiceResponse = (AddressResolutionModel) System.JSON.deserialize(addressValidationPostMethodResponse, AddressResolutionModel.class);
        expectedServiceResponse.statusCode = 200;
         String expectedValue = String.ValueOf(expectedServiceResponse);
      //   System.assertEquals(actualValue, expectedValue);
    }
    
}