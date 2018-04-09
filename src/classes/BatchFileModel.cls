/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represents one file in a batch upload. */

global class BatchFileModel extends ErrorResult
{

    /// The unique ID number assigned to this batch file.
    global Integer? id { get; set; }

    /// The unique ID number of the batch that this file belongs to.
    global Integer? batchId { get; set; }

    /// Logical Name of file (e.g. "Input" or "Error").
    global String name { get; set; }

    /// Content of the batch file.
    global Byte[] content { get; set; }

    /// Size of content, in bytes.
    global Integer? contentLength { get; set; }

    /// Content mime type (e.g. text/csv). This is used for HTTP downloading.
    global String contentType { get; set; }

    /// File extension (e.g. CSV).
    global String fileExtension { get; set; }

    /// Path to the file - name/S3 key
    global String filePath { get; set; }

    /// Number of errors that occurred when processing this file.
    global Integer? errorCount { get; set; }
}
