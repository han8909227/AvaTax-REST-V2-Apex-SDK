@isTest
private class BatchAPITest {
    @isTest
    static void TC1000_CreateBatchs() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('CreateBatchesResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        
        List<BatchModel> batchList = new List<BatchModel>();
        List<BatchFileModel> batchFileList = new List<BatchFileModel>();
        List<String> contentList = new List<String>();
        
        BatchFileModel batchFile = new BatchFileModel();
        batchFile.name = 'samplebatch.csv';
        contentList.add('UHJvY2Vzc0NvZGUsRG9jQ29kZSxEb2NUeXBlLERvY0RhdGUsQ29tcGFueUNvZGUsQ3VzdG9tZXJDb2RlLEVudGl0eVVzZUNvZGUsTGluZU5vLFRheENvZGUsVGF4RGF0ZSxJdGVtQ29kZSxEZXNjcmlwdGlvbixRdHksQW1vdW50LERpc2NvdW50LFJlZjEsUmVmMixFeGVtcHRpb25ObyxSZXZBY2N0LERlc3RBZGRyZXNzLERlc3RDaXR5LERlc3RSZWdpb24sRGVzdFBvc3RhbENvZGUsRGVzdENvdW50cnksT3JpZ0FkZHJlc3MsT3JpZ0NpdHksT3JpZ1JlZ2lvbixPcmlnUG9zdGFsQ29kZSxPcmlnQ291bnRyeSxMb2NhdGlvbkNvZGUsU2FsZXNQZXJzb25Db2RlLFB1cmNoYXNlT3JkZXJObyxDdXJyZW5jeUNvZGUsRXhjaGFuZ2VSYXRlLEV4Y2hhbmdlUmF0ZUVmZkRhdGUsUGF5bWVudERhdGUsVGF4SW5jbHVkZWQsRGVzdFRheFJlZ2lvbixPcmlnVGF4UmVnaW9uLFRheGFibGUsVGF4VHlwZSxUb3RhbFRheCxDb3VudHJ5TmFtZSxDb3VudHJ5Q29kZSxDb3VudHJ5UmF0ZSxDb3VudHJ5VGF4LFN0YXRlTmFtZSxTdGF0ZUNvZGUsU3RhdGVSYXRlLFN0YXRlVGF4LENvdW50eU5hbWUsQ291bnR5Q29kZSxDb3VudHlSYXRlLENvdW50eVRheCxDaXR5TmFtZSxDaXR5Q29kZSxDaXR5UmF0ZSxDaXR5VGF4LE90aGVyMU5hbWUsT3RoZXIxQ29kZSxPdGhlcjFSYXRlLE90aGVyMVRheCxPdGhlcjJOYW1lLE90aGVyMkNvZGUsT3RoZXIyUmF0ZSxPdGhlcjJUYXgsT3RoZXIzTmFtZSxPdGhlcjNDb2RlLE90aGVyM1JhdGUsT3RoZXIzVGF4LE90aGVyNE5hbWUsT3RoZXI0Q29kZSxPdGhlcjRSYXRlLE90aGVyNFRheCxSZWZlcmVuY2VDb2RlLEJ1eWVyc1ZBVE5vLElzU2VsbGVySW1wb3J0ZXJPZlJlY29yZCxCUkJ1eWVyVHlwZSxCUkJ1eWVyX0lzRXhlbXB0T3JDYW5ub3RXSF9JUlJGLEJSQnV5ZXJfSXNFeGVtcHRPckNhbm5vdFdIX1BJU1JGLEJSQnV5ZXJfSXNFeGVtcHRPckNhbm5vdFdIX0NPRklOU1JGLEJSQnV5ZXJfSXNFeGVtcHRPckNhbm5vdFdIX0NTTExSRixCUkJ1eWVyX0lzRXhlbXB0X1BJUyxCUkJ1eWVyX0lzRXhlbXB0X0NPRklOUyxCUkJ1eWVyX0lzRXhlbXB0X0NTTEwsSGVhZGVyX0Rlc2NyaXB0aW9uLEVtYWlsDQozLDlhYzI4MGMzLTNhNTUtNGEzNS1iZWQyLWE4M2RiNTNiMDUxZSwxLDEvMS8yMDE0LERFRkFVTFQsQ3VzdDEsLDEsLCwsLCwxMDAwLCwsLCwsMjM1IEUgNDJuZCBTdCAsTmV3IFlvcmssTlksMTAwMTctNTcwMyAgLFVTLDkwMCBXaW5zbG93IFdheSxCYWluYnJpZGdlIElzbGFuZCxXQSw5ODExMCxVUywsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwNCg==');       
        batchFile.content = contentList;
        batchFile.contentLength = 0;
        batchFile.contentType = 'text/csv';
        batchFile.fileExtension = '.csv';
        batchFile.filePath = 'samplebatch.csv';
        batchFile.id =12345 ;
        batchFile.errorCount =12345 ;
         batchFile.batchId =12345 ;
       
        batchFileList.add(batchFile);
        
        BatchModel batch = new BatchModel();
        batch.name = 'TestBatch';
        batch.type = batchtype.TransactionImport;
        batch.batchAgent = 'manual';
        batch.files = batchFileList;
        batch.id =12345 ;
        batch.accountId =12345 ;
        batch.companyId =12345 ;
        batch.createdUserId =12345 ;
        batch.createdDate =system.today() ;
        batch.currentRecord =12345 ;
        batch.modifiedDate =system.today() ;
        batch.modifiedUserId =12345 ;
        batch.options ='' ;
        batch.recordCount =12345 ;
        batch.startedDate =system.today() ;
        batch.type = BatchType.UPCBulkImport;
        batch.status = BatchStatus.Processing ;
        
        batchlist.add(batch);
                        
        ListBatchModel  result = client.createBatches(companyId, batchList);
    }
    
    @isTest
    static void TC1001_DeleteBatch() {
        // Create the mock response based on a static resource
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('DeleteBatchErrorResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer batchid = 5814629;
                
        ListErrorDetail result = client.DeleteBatch(companyId,batchid);
        
    }
    
    @isTest
    static void TC1002_GetBatch() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('BatchModelResponseResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        Test.setMock(HttpCalloutMock.class, mock);
		AvaTaxClient client = new AvaTaxClient('testapp', '1.0', 'testmachine', AvaTaxEnvironment.Sandbox);
        client.WithSecurity('demo', 'demo');

        Integer companyId = 302131;
        Integer batchid = 3879125;
        BatchModel  result = client.GetBatch(companyId, batchid);
    }
    
    @isTest
    static void TC1003_ListBatchsByCompany() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListBatchsByCompanyResponseResource');
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
        
        FetchResultBatchModel  result = client.ListBatchesByCompany(companyId, filter, include, top, skip, orderBy);
        BatchModel model = result.value[0]; 
    }
    
    @isTest
    static void TC1004_QueryBatchs() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('ListBatchsByCompanyResponseResource');
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
        
        FetchResultBatchModel  result = client.QueryBatches(filter, include, top, skip, orderBy);
        BatchModel model = result.value[0]; 
    }
}