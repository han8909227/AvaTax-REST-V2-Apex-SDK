/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A custom field provides extra information about a customer or certificate.
    /// 
    /// Custom fields are provided to permit you to store additional information about an exemption certificate or customer. They are available to 
    /// support additional use cases beyond that supported directly by Avalara's exemption certificate software.
    /// 
    /// For more information about custom fields, see the [Avalara Help Center article about custom fields](https://help.avalara.com/0021_Avalara_CertCapture/All_About_CertCapture/Edit_or_Remove_Details_about_Customers). */

global class CustomFieldModel extends ErrorResult
{

    /// The name of the custom field.
    global String name { get; set; }

    /// The value of the custom field.
    global String value { get; set; }
}
