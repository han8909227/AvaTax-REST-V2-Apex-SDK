/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents a request to activate an account by reading and accepting its terms and conditions. */

global class ActivateAccountModel extends ErrorResult
{

    /// Set this to true if and only if you accept Avalara's terms and conditions for your account.
    global Boolean? acceptAvalaraTermsAndConditions { get; set; }

    /// Set this to true if and only if you have fully read Avalara's terms and conditions for your account.
    global Boolean? haveReadAvalaraTermsAndConditions { get; set; }
}
