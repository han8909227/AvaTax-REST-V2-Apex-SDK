global class AddressResolutionModel extends ErrorResult
{  
    global AddressInfo address { get; set; }

    global List<ValidatedAddressInfo> validatedAddresses { get; set; }

    global CoordinateInfo coordinates { get; set; }

    global ResolutionQuality resolutionQuality { get; set; }

    global List<TaxAuthorityInfo> taxAuthorities { get; set; }

    global List<AvaTaxMessage> messages { get; set; }

}