/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents an advanced rule script */

global class AdvancedRuleScriptModel extends ErrorResult
{

    // The unique ID of the script
    global Integer id { get; set; }

    // Account ID
    global Integer accountId { get; set; }

    // How to proceed if the rule crashes
    global AdvancedRuleCrashBehavior crashBehavior { get; set; }

    // The type of script - request or response
    global AdvancedRuleScriptType scriptType { get; set; }

    // The JavaScript rule
    global String script { get; set; }

    // The rule has been approved
    global Boolean isApproved { get; set; }

    // The rule has been disabled
    global Boolean isDisabled { get; set; }
}
