/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* This object is used to keep track of custom information about a company.
    // 
    // The company settings system is a metadata system that you can use to store extra information
    // about a company. Your integration or connector could use this data storage to keep track of
    // preference information, reminders, or any other storage that would need to persist even if
    // the customer uninstalls your application.
    // 
    // A setting can refer to any type of data you need to remember about this company object.
    // When creating this object, you may define your own `set`, `name`, and `value` parameters.
    // To define your own values, please choose a `set` name that begins with `X-` to indicate an extension. */

global class ListSettingModel extends ErrorResult
{
    global List<SettingModel> result { get; set; }
}
