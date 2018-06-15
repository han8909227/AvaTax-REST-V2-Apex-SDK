global class AvaTaxPath 
{
    global Map<String, String> query = new Map<String,String>();
    global String relativePath = '';
    
    global AvaTaxPath(String uri)
    {
        relativePath = relativePath + uri;
    }
    
    global void ApplyField(string name, Object value)
    {
        relativePath = relativePath.replace('{'+ name + '}',String.valueof(value));
    }
    
    global void addQuery(string name, object value)
    {
        if (value != null) 
        {
           query.put(name,EncodingUtil.urlEncode(String.valueof(value), 'UTF-8'));
        }
    }
        
    global String formattedQuery()
    {   
        String formattedQuery = '';
        if(query.size() > 0)
        {
            Set<String> keys = new Set<String>();
            keys = query.keySet();
            for(String k: keys)
            {
                String templateString = '{0}={1}&';
                String[] arguments = new String[]{k,query.get(k)};
                formattedQuery += String.Format(templateString,arguments); 
            }
        }
        return '?'+formattedQuery;
    }
    
}