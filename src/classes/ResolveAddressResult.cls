global class ResolveAddressResult
{
    global AddressResolutionModel result {get; set;}
    
    global StatusCode status {get; set;}
    
    global List<AvaTaxMessage> messages { get; set; }
}