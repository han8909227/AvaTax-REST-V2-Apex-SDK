/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/*  */

global class FundingInitiateModel extends ErrorResult
{

    /// Set this value to true to request an email to the recipient
    global Boolean requestEmail { get; set; }

    /// If you have requested an email for funding setup, this is the recipient who will receive an 
    /// email inviting them to setup funding configuration for Avalara Managed Returns. The recipient can
    /// then click on a link in the email and setup funding configuration for this company.
    global String fundingEmailRecipient { get; set; }

    /// Set this value to true to request an HTML-based funding widget that can be embedded within an 
    /// existing user interface. A user can then interact with the HTML-based funding widget to set up
    /// funding information for the company.
    global Boolean requestWidget { get; set; }
}
