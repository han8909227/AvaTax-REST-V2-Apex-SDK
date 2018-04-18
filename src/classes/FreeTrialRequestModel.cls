/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a request for a free trial account for AvaTax.
    // Free trial accounts are only available on the Sandbox environment. */

global class FreeTrialRequestModel extends ErrorResult
{

    // The first or given name of the user requesting a free trial.
    global String firstName { get; set; }

    // The last or family name of the user requesting a free trial.
    global String lastName { get; set; }

    // The email address of the user requesting a free trial.
    global String email { get; set; }

    // The company or organizational name for this free trial. If this account is for personal use, it is acceptable 
    // to use your full name here.
    global String company { get; set; }

    // The phone number of the person requesting the free trial.
    global String phone { get; set; }

    // Campaign identifier for Notification purpose
    global String campaign { get; set; }

    // The Address information of the account
    global CompanyAddress companyAddress { get; set; }

    // Website of the company or user requesting a free trial
    global String website { get; set; }

    // Read Avalara's terms and conditions is necessary for a free trial account
    global Boolean haveReadAvalaraTermsAndConditions { get; set; }

    // Accept Avalara's terms and conditions is necessary for a free trial
    global Boolean acceptAvalaraTermsAndConditions { get; set; }
}
