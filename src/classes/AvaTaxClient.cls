global class AvaTaxClient
{
    global static string API_VERSION { get { return '18.3.0-171'; } }
    private string credentials;
    private string clientHeader;
    private String envUri;

    global AvaTaxClient(string appName, string appVersion, string machineName, AvaTaxEnvironment environment)
    {
        WithClientIdentifier(appName, appVersion, machineName);

        if(environment==AvaTaxEnvironment.Sandbox) 
        {
            envUri = Constants.AVATAX_SANDBOX_URL;
        } else if(environment==AvaTaxEnvironment.Production)
        {
            envUri = Constants.AVATAX_PRODUCTION_URL;
        }         
    }
        
    global AvaTaxClient WithClientIdentifier(string appName, string appVersion, string machineName)
    {
        String templateString = '{0}; {1}; {2}; {3}; {4}';
        String[] arguments = new String[]{appName, appVersion, 'ApexRestClient', API_VERSION, machineName};
        clientHeader = String.Format(templateString,arguments);
        return this;
    }
    
    global AvaTaxClient(string appName, string appVersion, string machineName, String customEnvironment)
    {
        WithClientIdentifier(appName, appVersion, machineName);
        envUri = customEnvironment;
    }
    
    global AvaTaxClient WithSecurity(string headerString)
    {
        credentials = headerString;
        return this;
    }

    global AvaTaxClient WithSecurity(string username, string password)
    {
        String templateString = '{0}:{1}';
        String[] arguments = new String[]{username, password};
        String combined = String.Format(templateString,arguments);
        
        
        Blob Integers = Blob.valueOf(combined);
        String base64 = EncodingUtil.base64Encode(Integers);
        return WithSecurity('Basic ' + base64);
    }
    
    global AvaTaxClient WithSecurity(integer accountId, string licenseKey)
    {
        String templateString = '{0}:{1}';
        String[] arguments = new String[]{String.valueOf(accountId), licenseKey};
        String combined = String.Format(templateString,arguments);
        Blob Integers = Blob.valueOf(combined);
        String base64 = EncodingUtil.base64Encode(Integers);
        return WithSecurity('Basic ' + base64);
    }
    
    global AvaTaxClient WithBearerToken(string bearerToken)
    {
        WithSecurity('Bearer' + bearerToken);
        return this;
    }
    
    /**************************************************************************/
    
    public LicenseKeyModel accountResetLicenseKey(Integer id, ResetLicenseKeyModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/{id}/resetlicensekey');
        path.ApplyField('id', id);
        
        LicenseKeyModel responseModel = null;
        responseModel = (LicenseKeyModel) restCall('POST', path.relativePath, model,LicenseKeyModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
                    
        return responseModel;
    }
    
    public AccountModel activateAccount(Integer id, String include, ActivateAccountModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/{id}/activate');
        path.ApplyField('id', id);
        path.AddQuery('$include', include);
        AccountModel responseModel = null;
        responseModel = (AccountModel) restCall('POST', path.relativePath, model,AccountModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public AccountModel getAccount(Integer id, String include)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/{id}');
        path.ApplyField('id', id);
        path.AddQuery('$include', include);
        AccountModel responseModel = null;
        responseModel = (AccountModel) restCall('GET', path.relativePath, NULL,AccountModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public ListAccountConfigurationModel getAccountConfiguration(Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/{id}/configuration');
        path.ApplyField('id', id);
        httpResponse res= restCallForList('GET', path.relativePath, null);
        ListAccountConfigurationModel retVal=new ListAccountConfigurationModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<AccountConfigurationModel>)System.JSON.deserialize(res.getBody(), List<AccountConfigurationModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }
    
    public ListAccountConfigurationModel SetAccountConfiguration(Integer id, List<AccountConfigurationModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/{id}/configuration');
        path.ApplyField('id', id);
    
        httpResponse res= restCallForList('POST', path.relativePath, model);
        ListAccountConfigurationModel retVal=new ListAccountConfigurationModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<AccountConfigurationModel>)System.JSON.deserialize(res.getBody(), List<AccountConfigurationModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    
    }
    
    global AddressResolutionModel resolveAddress(String line1, String line2, String line3, String city, String region, String postalCode, String country, TextCase textCase, Decimal latitude, Decimal longitude)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/addresses/resolve');
        path.AddQuery('line1', line1);
        path.AddQuery('line2', line2);
        path.AddQuery('line3', line3);
        path.AddQuery('city', city);
        path.AddQuery('region', region);
        path.AddQuery('postalCode', postalCode);
        path.AddQuery('country', country);
        path.AddQuery('textCase', textCase);
        path.AddQuery('latitude', latitude);
        path.AddQuery('longitude', longitude);
        path.relativepath += path.formattedQuery();
        
        AddressResolutionModel responseModel = null;
        
        responseModel = (AddressResolutionModel) restCall('GET', path.relativePath, null,AddressResolutionModel.class.getName());
        
        if(responseModel.statusCode == 200 && responseModel.messages != null)
            responseModel.statusCode = 500;
        
        return responseModel;
    }
        
    global AddressResolutionModel resolveAddressPost(AddressValidationInfo model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/addresses/resolve'); 
        AddressResolutionModel responseModel = null;
        
        responseModel = (AddressResolutionModel) restCall('POST', path.relativePath, model,AddressResolutionModel.class.getName());                
        
        if(responseModel.statusCode == 200 && responseModel.messages != null)
            responseModel.statusCode = 500;
        
        return responseModel;
    }
    
    public ListBatchModel createBatches(Integer companyId, List<BatchModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/batches');
        path.ApplyField('companyId', companyId);
        
        httpResponse res= restCallForList('POST', path.relativePath, model);
        ListBatchModel retVal = new ListBatchModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<BatchModel>)System.JSON.deserialize(res.getBody(), List<BatchModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }
    
    public ListErrorDetail deleteBatch(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/batches/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        httpResponse res= restCallForList('DELETE', path.relativePath, null);
        ListErrorDetail retVal = new ListErrorDetail();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (ErrorDetail)System.JSON.deserialize(res.getBody(), ErrorDetail.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }
    
    public BatchModel GetBatch(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/batches/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        BatchModel responseModel = null;
        responseModel = (BatchModel)restCall('DELETE', path.relativePath, null,BatchModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultBatchModel ListBatchesByCompany(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/batches');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery();
        FetchResultBatchModel responseModel = null;
        responseModel = (FetchResultBatchModel) restCall('GET', path.relativePath, null,FetchResultBatchModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultBatchModel QueryBatches(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/batches');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery();
        
        FetchResultBatchModel responseModel = null;
        responseModel = (FetchResultBatchModel) restCall('GET', path.relativePath, null,FetchResultBatchModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public CompanyModel CompanyInitialize(CompanyInitializationModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/initialize');
        CompanyModel responseModel = null;
        responseModel = (CompanyModel) restCall('POST', path.relativePath, model,CompanyModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    global ListCompanyModel CreateCompanies(List<CompanyModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies');
        httpResponse res= restCallForList('POST', path.relativePath, model);
        ListCompanyModel retVal = new ListCompanyModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<CompanyModel>)System.JSON.deserialize(res.getBody(), List<CompanyModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;      
    }
    
    public void DeleteCompany(Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{id}');
        path.ApplyField('id', id);
        httpResponse res= restCallForList('DELETE', path.relativePath, null);        
    }
    
    global CompanyModel GetCompany(Integer id, String include)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{id}');
        path.applyField('id', id);
        path.addQuery('$include', include);
        path.relativepath += path.formattedQuery();
        CompanyModel responseModel = null;
        responseModel = (CompanyModel) restCall('GET', path.relativePath, null,CompanyModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public ListCompanyConfigurationModel GetCompanyConfiguration(Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{id}/configuration');
        path.ApplyField('id', id); 
        httpResponse res = restCallForList('GET', path.relativePath, null);
        ListCompanyConfigurationModel retVal = new ListCompanyConfigurationModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<CompanyConfigurationModel>)System.JSON.deserialize(res.getBody(), List<CompanyConfigurationModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }
    /***1****/
    
    public FetchResultCompanyModel ListMrsCompanies()
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/mrs');
        FetchResultCompanyModel responseModel = null;
        responseModel = (FetchResultCompanyModel) restCall('GET', path.relativePath, null,FetchResultCompanyModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    global FetchResultCompanyModel QueryCompanies(String include, String filter, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies');
        path.AddQuery('$include', include);
        path.AddQuery('$filter', filter);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery();
        FetchResultCompanyModel responseModel = null;
        responseModel = (FetchResultCompanyModel) restCall('GET', path.relativePath, null,FetchResultCompanyModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
   
    public ListCompanyConfigurationModel SetCompanyConfiguration(Integer id, List<CompanyConfigurationModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{id}/configuration');
        path.ApplyField('id', id);
        httpResponse res = restCallForList('POST', path.relativePath, model);
        ListCompanyConfigurationModel retVal = new ListCompanyConfigurationModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<CompanyConfigurationModel>)System.JSON.deserialize(res.getBody(), List<CompanyConfigurationModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }
    
    public CompanyModel UpdateCompany(Integer id, CompanyModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{id}');
        path.ApplyField('id', id);
        CompanyModel responseModel = null;
        responseModel = (CompanyModel) restCall('PUT', path.relativePath, model,CompanyModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
   
    public ListContactModel CreateContacts(Integer companyId, List<ContactModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/contacts');
        path.ApplyField('companyId', companyId);
        httpResponse res= restCallForList('POST', path.relativePath, model);
        ListContactModel retVal = new ListContactModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<ContactModel>)System.JSON.deserialize(res.getBody(), List<ContactModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }
    
    public Void DeleteContact(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/contacts/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        httpResponse res= restCallForList('DELETE', path.relativePath, null);
       
    }
    
    public ContactModel GetContact(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/contacts/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        ContactModel responseModel = null;
        responseModel = (ContactModel) restCall('GET', path.relativePath, null,ContactModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultContactModel ListContactsByCompany(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/contacts');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery();
        FetchResultContactModel responseModel = null;
        responseModel = (FetchResultContactModel) restCall('GET', path.relativePath, null,FetchResultContactModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultContactModel QueryContacts(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/contacts');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery();
        FetchResultContactModel responseModel = null;
        responseModel = (FetchResultContactModel) restCall('GET', path.relativePath, null,FetchResultContactModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public ContactModel UpdateContact(Integer companyId, Integer id, ContactModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/contacts/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        ContactModel responseModel = null;
        responseModel = (ContactModel) restCall('PUT', path.relativePath, model,ContactModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultCustomerModel CreateCustomers(Integer companyId, List<CustomerModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/customers');
        path.ApplyField('companyId', companyId);
        httpResponse res= restCallForList('GET', path.relativePath, null);
        FetchResultCustomerModel retVal = new FetchResultCustomerModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.value= (List<CustomerModel>)System.JSON.deserialize(res.getBody(), List<CustomerModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }
    
    public void DeleteCustomer(Integer companyId, String customerCode)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/customers/{customerCode}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('customerCode', customerCode);
        
        Object obj = restCall('DELETE', path.relativePath, null,CustomerModel.class.getName());
    } 
    
    public CustomerModel GetCustomer(Integer companyId, String customerCode, String include)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/customers/{customerCode}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('customerCode', customerCode);
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        CustomerModel responseModel = null;
        responseModel = (CustomerModel) restCall('GET', path.relativePath, null,CustomerModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultCustomerModel QueryCustomers(Integer companyId, String include, String filter, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/customers');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$include', include);
        path.AddQuery('$filter', filter);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultCustomerModel responseModel = null;
        responseModel = (FetchResultCustomerModel) restCall('GET', path.relativePath, null,FetchResultCustomerModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public CustomerModel UpdateCustomer(Integer companyId, String customerCode, CustomerModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/customers/{customerCode}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('customerCode', customerCode);
        CustomerModel responseModel = null;
        responseModel = (CustomerModel) restCall('PUT', path.relativePath, model,CustomerModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultCertificateModel ListCertificatesForCustomer(Integer companyId, String customerCode, String include, String filter, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/customers/{customerCode}/certificates');
        path.ApplyField('companyId', companyId);
        path.ApplyField('customerCode', customerCode);
        path.AddQuery('$include', include);
        path.AddQuery('$filter', filter);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultCertificateModel responseModel = null;
        responseModel = (FetchResultCertificateModel) restCall('GET', path.relativePath, null,FetchResultCertificateModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public ExemptionStatusModel ListValidCertificatesForCustomer(Integer companyId, String customerCode, String country, String region)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/customers/{customerCode}/certificates/{country}/{region}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('customerCode', customerCode);
        path.ApplyField('country', country);
        path.ApplyField('region', region);
        ExemptionStatusModel responseModel = null;
        responseModel = (ExemptionStatusModel) restCall('GET', path.relativePath, null,ExemptionStatusModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultCustomerModel LinkCustomersToCertificate(Integer companyId, Integer id, LinkCustomersModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/certificates/{id}/customers/link');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        FetchResultCustomerModel responseModel = null;
        responseModel = (FetchResultCustomerModel) restCall('POST', path.relativePath, model,FetchResultCustomerModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultCustomerModel UnlinkCustomersFromCertificate(Integer companyId, Integer id, LinkCustomersModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/certificates/{id}/customers/unlink');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        FetchResultCustomerModel responseModel = null;
        responseModel = (FetchResultCustomerModel) restCall('POST', path.relativePath, model,FetchResultCustomerModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public NewAccountModel RequestFreeTrial(FreeTrialRequestModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/freetrials/request');
        NewAccountModel responseModel = null;
        responseModel = (NewAccountModel) restCall('POST', path.relativePath, model,NewAccountModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public TaxRateModel TaxRatesByAddress(String line1, String line2, String line3, String city, String region, String postalCode, String country)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/taxrates/byaddress');
        path.AddQuery('line1', line1);
        path.AddQuery('line2', line2);
        path.AddQuery('line3', line3);
        path.AddQuery('city', city);
        path.AddQuery('region', region);
        path.AddQuery('postalCode', postalCode);
        path.AddQuery('country', country);
        path.relativepath += path.formattedQuery(); 
        TaxRateModel responseModel = null;
        responseModel = (TaxRateModel) restCall('GET', path.relativePath, null,TaxRateModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public TaxRateModel TaxRatesByPostalCode(String country, String postalCode)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/taxrates/bypostalcode');
        path.AddQuery('country', country);
        path.AddQuery('postalCode', postalCode);
        path.relativepath += path.formattedQuery(); 
        TaxRateModel responseModel = null;
        responseModel = (TaxRateModel) restCall('GET', path.relativePath, null,TaxRateModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public ListItemModel CreateItems(Integer companyId, List<ItemModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/items');
        path.ApplyField('companyId', companyId);
        httpResponse res= restCallForList('POST', path.relativePath, model);
        ListItemModel retVal = new ListItemModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<ItemModel>)System.JSON.deserialize(res.getBody(), List<ItemModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }

    public void DeleteItem(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/items/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        HttpResponse res = restCallForList('DELETE', path.relativePath, null);
    }

    public ItemModel GetItem(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/items/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        ItemModel responseModel = null;
        responseModel = (ItemModel) restCall('GET', path.relativePath, null,ItemModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public FetchResultItemModel ListItemsByCompany(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/items');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultItemModel responseModel = null;
        responseModel = (FetchResultItemModel) restCall('GET', path.relativePath, null,FetchResultItemModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultItemModel QueryItems(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/items');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultItemModel responseModel = null;
        responseModel = (FetchResultItemModel) restCall('GET', path.relativePath, null,FetchResultItemModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public ItemModel UpdateItem(Integer companyId, Integer id, ItemModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/items/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        ItemModel responseModel = null;
        responseModel = (ItemModel) restCall('PUT', path.relativePath, model,ItemModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public ListLocationModel CreateLocations(Integer companyId, List<LocationModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/locations');
        path.ApplyField('companyId', companyId);
        httpResponse res = restCallForList('POST', path.relativePath, model);
        ListLocationModel retVal = new ListLocationModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<LocationModel>)System.JSON.deserialize(res.getBody(), List<LocationModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }

    public void DeleteLocation(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/locations/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        HttpResponse res = restCallForList('DELETE', path.relativePath, null);
    }

    public LocationModel GetLocation(Integer companyId, Integer id, String include)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/locations/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery(); 
        LocationModel responseModel = null;
        responseModel = (LocationModel) restCall('GET', path.relativePath, null,LocationModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultLocationModel ListLocationsByCompany(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/locations');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultLocationModel responseModel = null;
        responseModel = (FetchResultLocationModel) restCall('GET', path.relativePath, null,FetchResultLocationModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultLocationModel QueryLocations(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/locations');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultLocationModel responseModel = null;
        responseModel = (FetchResultLocationModel) restCall('GET', path.relativePath, null,FetchResultLocationModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public LocationModel UpdateLocation(Integer companyId, Integer id, LocationModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/locations/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        LocationModel responseModel = null;
        responseModel = (LocationModel) restCall('PUT', path.relativePath, model,LocationModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public LocationValidationModel ValidateLocation(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/locations/{id}/validate');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        LocationValidationModel responseModel = null;
        responseModel = (LocationValidationModel) restCall('GET', path.relativePath, null,LocationValidationModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public ListNexusModel CreateNexus(Integer companyId, List<NexusModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/nexus');
        path.ApplyField('companyId', companyId);
        httpResponse res = restCallForList('POST', path.relativePath, model);
        ListNexusModel retVal = new ListNexusModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<NexusModel>)System.JSON.deserialize(res.getBody(), List<NexusModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }

    public void DeleteNexus(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/nexus/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        httpResponse res= restCallForList('DELETE', path.relativePath, null);
    }

    public NexusModel GetNexus(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/nexus/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        return (NexusModel) restCall('GET', path.relativePath, null,NexusModel.class.getName());
    }

    public FetchResultNexusModel ListNexusByCompany(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/nexus');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultNexusModel responseModel = null;
        responseModel = (FetchResultNexusModel) restCall('GET', path.relativePath, null,FetchResultNexusModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultNexusModel QueryNexus(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/nexus');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultNexusModel responseModel = null;
        responseModel = (FetchResultNexusModel) restCall('GET', path.relativePath, null,FetchResultNexusModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public NexusModel UpdateNexus(Integer companyId, Integer id, NexusModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/nexus/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        NexusModel responseModel = null;
        responseModel = (NexusModel) restCall('PUT', path.relativePath, model,NexusModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public NewAccountModel RequestNewAccount(NewAccountRequestModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/request');
        NewAccountModel responseModel = null;
        responseModel = (NewAccountModel) restCall('POST', path.relativePath, model,NewAccountModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public ListSettingModel CreateSettings(Integer companyId, List<SettingModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/settings');
        path.ApplyField('companyId', companyId);
        httpResponse res = restCallForList('POST', path.relativePath, model);
        ListSettingModel retVal = new ListSettingModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<SettingModel>)System.JSON.deserialize(res.getBody(), List<SettingModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }

    public void DeleteSetting(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/settings/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        httpResponse res = restCallForList('DELETE', path.relativePath, null);        
    }

    public SettingModel GetSetting(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/settings/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        SettingModel responseModel = null;
        responseModel = (SettingModel) restCall('GET', path.relativePath, null,SettingModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultSettingModel ListSettingsByCompany(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/settings');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultSettingModel responseModel = null;
        responseModel = (FetchResultSettingModel) restCall('GET', path.relativePath, null,FetchResultSettingModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultSettingModel QuerySettings(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/settings');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultSettingModel responseModel = null;
        responseModel = (FetchResultSettingModel) restCall('GET', path.relativePath, null,FetchResultSettingModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public SettingModel UpdateSetting(Integer companyId, Integer id, SettingModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/settings/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        SettingModel responseModel = null;
        responseModel = (SettingModel) restCall('PUT', path.relativePath, model,SettingModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public SubscriptionModel GetSubscription(Integer accountId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/{accountId}/subscriptions/{id}');
        path.ApplyField('accountId', accountId);
        path.ApplyField('id', id);
        SubscriptionModel responseModel = null;
        responseModel = (SubscriptionModel) restCall('GET', path.relativePath, null,SubscriptionModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultSubscriptionModel ListSubscriptionsByAccount(Integer accountId, String filter, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/accounts/{accountId}/subscriptions');
        path.ApplyField('accountId', accountId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultSubscriptionModel responseModel = null;
        responseModel = (FetchResultSubscriptionModel) restCall('GET', path.relativePath, null,FetchResultSubscriptionModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
        
    }

    public FetchResultSubscriptionModel QuerySubscriptions(String filter, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/subscriptions');
        path.AddQuery('$filter', filter);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultSubscriptionModel responseModel = null;
        responseModel = (FetchResultSubscriptionModel) restCall('GET', path.relativePath, null,FetchResultSubscriptionModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public ListTaxCodeModel CreateTaxCodes(Integer companyId, List<TaxCodeModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxcodes');
        path.ApplyField('companyId', companyId);
        httpResponse res = restCallForList('POST', path.relativePath, model);
        ListTaxCodeModel retVal = new ListTaxCodeModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<TaxCodeModel>)System.JSON.deserialize(res.getBody(), List<TaxCodeModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }

    public void DeleteTaxCode(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxcodes/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        HttpResponse res = restCallForList('DELETE', path.relativePath, null);
    }

    public TaxCodeModel GetTaxCode(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxcodes/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        TaxCodeModel responseModel = null;
        responseModel = (TaxCodeModel) restCall('GET', path.relativePath, null,TaxCodeModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultTaxCodeModel ListTaxCodesByCompany(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxcodes');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultTaxCodeModel responseModel = null;
        responseModel = (FetchResultTaxCodeModel) restCall('GET', path.relativePath, null,FetchResultTaxCodeModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultTaxCodeModel QueryTaxCodes(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/taxcodes');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultTaxCodeModel responseModel = null;
        responseModel = (FetchResultTaxCodeModel) restCall('GET', path.relativePath, null,FetchResultTaxCodeModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public TaxCodeModel UpdateTaxCode(Integer companyId, Integer id, TaxCodeModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxcodes/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        TaxCodeModel responseModel = null;
        responseModel = (TaxCodeModel) restCall('PUT', path.relativePath, model,TaxCodeModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    public ListTaxRuleModel CreateTaxRules(Integer companyId, List<TaxRuleModel> model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxrules');
        path.ApplyField('companyId', companyId);
        httpResponse res = restCallForList('POST', path.relativePath, model);
        ListTaxRuleModel retVal = new ListTaxRuleModel();
        if(res.getStatusCode() == 200 || res.getStatusCode() == 201)
        {
            retVal.result= (List<TaxRuleModel>)System.JSON.deserialize(res.getBody(), List<TaxRuleModel>.class);
        }
        else
        {
            retVal.error=((ErrorResult)System.JSON.deserialize(res.getBody(), ErrorResult.class)).error;
        }
        retVal.statusCode=res.getStatusCode();
        return retVal;
    }

    public void DeleteTaxRule(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxrules/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        HttpResponse res = restCallForList('DELETE', path.relativePath, null);        
    }

    public TaxRuleModel GetTaxRule(Integer companyId, Integer id)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxrules/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        TaxRuleModel responseModel = null;
        responseModel = (TaxRuleModel) restCall('GET', path.relativePath, null,TaxRuleModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultTaxRuleModel ListTaxRules(Integer companyId, String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxrules');
        path.ApplyField('companyId', companyId);
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultTaxRuleModel responseModel = null;
        responseModel = (FetchResultTaxRuleModel) restCall('GET', path.relativePath, null,FetchResultTaxRuleModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public FetchResultTaxRuleModel QueryTaxRules(String filter, String include, Integer top, Integer skip, String orderBy)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/taxrules');
        path.AddQuery('$filter', filter);
        path.AddQuery('$include', include);
        path.AddQuery('$top', top);
        path.AddQuery('$skip', skip);
        path.AddQuery('$orderBy', orderBy);
        path.relativepath += path.formattedQuery(); 
        FetchResultTaxRuleModel responseModel = null;
        responseModel = (FetchResultTaxRuleModel) restCall('GET', path.relativePath, null,FetchResultTaxRuleModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public TaxRuleModel UpdateTaxRule(Integer companyId, Integer id, TaxRuleModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyId}/taxrules/{id}');
        path.ApplyField('companyId', companyId);
        path.ApplyField('id', id);
        TaxRuleModel responseModel = null;
        responseModel = (TaxRuleModel) restCall('PUT', path.relativePath, model,TaxRuleModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    global TransactionModel AddLines(String include, AddTransactionLineModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/transactions/lines/add');
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global TransactionModel AdjustTransaction(String companyCode, String transactionCode, AdjustTransactionModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/adjust');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
        
               if(responseModel == null)
        {
            responseModel = new TransactionModel();
            ErrorInfo err = new ErrorInfo();
            List<ErrorDetail> errDataMap = new List<ErrorDetail>();
            ErrorDetail errData = new ErrorDetail();
            
            errData.description =  'Internal Server Error';
            errDataMap.add(errData);
            err.details = errDataMap;
            responseModel.statusCode = 500;
            responseModel.error= err;
        }
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global AuditTransactionModel AuditTransaction(String companyCode, String transactionCode)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/audit');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        path.relativepath += path.formattedQuery();
        AuditTransactionModel responseModel = null;
        responseModel = (AuditTransactionModel) restCall('GET', path.relativePath, null,AuditTransactionModel.class.getName()); 
                
        if(responseModel == null)
        {
            responseModel = new AuditTransactionModel();
            ErrorInfo err = new ErrorInfo();
            List<ErrorDetail> errDataMap = new List<ErrorDetail>();
            ErrorDetail errData = new ErrorDetail();
            
            errData.description =  'Internal Server Error';
            errDataMap.add(errData);
            err.details = errDataMap;
            responseModel.statusCode = 500;
            responseModel.error= err;
        }
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global AuditTransactionModel AuditTransactionWithType(String companyCode, String transactionCode, DocumentType documentType)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/types/{documentType}/audit');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        path.ApplyField('documentType', documentType);
        AuditTransactionModel responseModel = null;
        responseModel = (AuditTransactionModel) restCall('GET', path.relativePath, null,AuditTransactionModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    public BulkLockTransactionResult BulkLockTransaction(BulkLockTransactionModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/transactions/lock');
        BulkLockTransactionResult responseModel = null;
        responseModel = (BulkLockTransactionResult) restCall('POST', path.relativePath, null,BulkLockTransactionResult.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global TransactionModel ChangeTransactionCode(String companyCode, String transactionCode, ChangeTransactionCodeModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/changecode');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global TransactionModel CommitTransaction(String companyCode, String transactionCode, CommitTransactionModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/commit');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
        /*
              if(responseModel == null)
        {
            responseModel = new TransactionModel();
            ErrorInfo err = new ErrorInfo();
            List<ErrorDetail> errDataMap = new List<ErrorDetail>();
            ErrorDetail errData = new ErrorDetail();
            
            errData.description =  'Internal Server Error';
            errDataMap.add(errData);
            err.details = errDataMap;
            responseModel.statusCode = 500;
            responseModel.error= err;
        }
        
       else*/ if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    
    global TransactionModel VoidTransaction(String companyCode, String transactionCode, VoidTransactionModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/void');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
             if(responseModel == null)
        {
            responseModel = new TransactionModel();
            ErrorInfo err = new ErrorInfo();
            List<ErrorDetail> errDataMap = new List<ErrorDetail>();
            ErrorDetail errData = new ErrorDetail();
            
            errData.description =  'Internal Server Error';
            errDataMap.add(errData);
            err.details = errDataMap;
            responseModel.statusCode = 500;
            responseModel.error= err;
        }
        
        else if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global TransactionModel VerifyTransaction(String companyCode, String transactionCode, VerifyTransactionModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/verify');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
   
    global TransactionModel CreateOrAdjustTransaction(String include, CreateOrAdjustTransactionModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/transactions/createoradjust');
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    global TransactionModel CreateTransaction(String include, CreateTransactionModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/transactions/create');
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        TransactionModel responseModel = null;
       
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
     
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    global TransactionModel DeleteLines(String include, RemoveTransactionLineModel model)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/transactions/lines/delete');
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('POST', path.relativePath, model,TransactionModel.class.getName()); 
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

 

    global TransactionModel GetTransactionByCode(String companyCode, String transactionCode, String include)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        TransactionModel responseModel = null;
        
        responseModel = (TransactionModel) restCall('GET', path.relativePath, null,TransactionModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global TransactionModel GetTransactionByCodeAndType(String companyCode, String transactionCode, DocumentType documentType, String include)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/companies/{companyCode}/transactions/{transactionCode}/types/{documentType}');
        path.ApplyField('companyCode', companyCode);
        path.ApplyField('transactionCode', transactionCode);
        path.ApplyField('documentType', documentType);
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('GET', path.relativePath, null,TransactionModel.class.getName());
           if(responseModel == null)
        {
            responseModel = new TransactionModel();
            ErrorInfo err = new ErrorInfo();
            List<ErrorDetail> errDataMap = new List<ErrorDetail>();
            ErrorDetail errData = new ErrorDetail();
            
            errData.description =  'Internal Server Error';
            errDataMap.add(errData);
            err.details = errDataMap;
            responseModel.statusCode = 500;
            responseModel.error= err;
        }
        else if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global TransactionModel GetTransactionById(Integer id, String include)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/transactions/{id}');
        path.ApplyField('id', id);
        path.AddQuery('$include', include);
        path.relativepath += path.formattedQuery();
        TransactionModel responseModel = null;
        responseModel = (TransactionModel) restCall('GET', path.relativePath, null,TransactionModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    global FetchResultSubscriptionModel GetSubscription()
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/utilities/subscriptions');
        FetchResultSubscriptionModel responseModel = null;
        responseModel = (FetchResultSubscriptionModel) restCall('GET', path.relativePath, null,FetchResultSubscriptionModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
    
    global SubscriptionModel GetMySubscription(ServiceTypeId serviceTypeId)
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/utilities/subscriptions/{serviceTypeId}');
        path.ApplyField('serviceTypeId', serviceTypeId);
        SubscriptionModel responseModel = null;
        responseModel = (SubscriptionModel) restCall('GET', path.relativePath, null,SubscriptionModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }

    global PingResultModel Ping()
    {
        AvaTaxPath path = new AvaTaxPath('/api/v2/utilities/ping');
        PingResultModel responseModel = null;
        responseModel = (PingResultModel)restCall('GET', path.relativePath, null,PingResultModel.class.getName());
        
        if(responseModel.statusCode != 200 || responseModel.statusCode != 201)
        {
            responseModel.error = ((ErrorResult)System.JSON.deserialize(JSON.serialize(responseModel), ErrorResult.class)).error;
        }
        
        return responseModel;
    }
        
    global Object restCall(String method, String relativePath, Object model,String type)
    {
			Http http = new Http();
            HttpRequest httpRequest = new HttpRequest();
            httpRequest.setEndpoint(envUri+relativePath);
            HttpRequest.setMethod(method);
            httpRequest.setHeader('Authorization', credentials);
            httpRequest.setHeader('X-Avalara-Client', clientHeader);
            httpRequest.setHeader('Accept', 'application/json');
            httpRequest.setHeader('Content-Type', 'application/json');
        	    
        	string finalRequest = JSON.serialize(model);
        	finalRequest = finalRequest.replace('documentDate', 'date');
        	finalRequest = 	finalRequest.replace('commitDocument', 'commit');
        	finalRequest = 	finalRequest.replace('commitTransaction', 'commit');
        	finalRequest = 	finalRequest.replace('lineNumber', 'number');
        	
        
        	if (model != null) 
            {
                httpRequest.setBody(finalRequest);
            }
            
            HttpResponse httpResponse = http.send(httpRequest);
            System.Type sType = System.Type.forName(type); 
            String finalHttpResponse = httpResponse.getBody();
            finalHttpResponse = finalHttpResponse.replace('AvaTax.Communications.TransactionType', 'TransactionType');
            finalHttpResponse = finalHttpResponse.replace('AvaTax.Communications.ServiceType', 'ServiceType');
            finalHttpResponse = finalHttpResponse.replace('@recordsetCount', 'count');
            finalHttpResponse = finalHttpResponse.replace('@nextLink', 'nextLink');
    	    finalHttpResponse = finalHttpResponse.replace('@transactionDate', 'date');
    	   
            Object obj;
            if (finalHttpResponse != '')
            {
                obj = System.JSON.deserialize(finalHttpResponse, sType);
                ((ErrorResult)obj).statusCode=httpResponse.getStatusCode();
            }
            
            return obj;
    }
    
    global HttpResponse restCallForList(String method, String relativePath, Object model)
    {

            Http http = new Http();
            HttpRequest httpRequest = new HttpRequest();
            httpRequest.setEndpoint(envUri+relativePath);
            HttpRequest.setMethod(method);
            httpRequest.setHeader('Authorization', credentials);
            httpRequest.setHeader('X-Avalara-Client', clientHeader);
            httpRequest.setHeader('Accept', 'application/json');
            httpRequest.setHeader('Content-Type', 'application/json');
            if (model != null) 
            {
                httpRequest.setBody(JSON.serialize(model));
            }
            
            HttpResponse httpResponse = http.send(httpRequest);
            httpResponse.getBody().replace('AvaTax.Communications.TransactionType', 'TransactionType');
            httpResponse.getBody().replace('AvaTax.Communications.ServiceType', 'ServiceType');
            
            return httpResponse;
    }
}