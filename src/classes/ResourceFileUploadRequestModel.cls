/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* A request to upload a file to Resource Files */

global class ResourceFileUploadRequestModel extends ErrorResult
{

    // This stream contains the bytes of the file being uploaded.
    global Byte[] content { get; set; }

    // The username adding the file
    global String username { get; set; }

    // The account ID to which this file will be attached.
    global Integer accountId { get; set; }

    // The company ID to which this file will be attached.
    global Integer companyId { get; set; }

    // The original name of this file.
    global String name { get; set; }

    // The resource type ID of this file.
    global Integer resourceFileTypeId { get; set; }

    // Length of the file in bytes.
    global Integer length { get; set; }
}
