/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Resource File Type Model */

global class ResourceFileTypeModel extends ErrorResult
{

    /// The resource file type id
    global Integer? resourceFileTypeId { get; set; }

    /// The name of the file type
    global String name { get; set; }
}
