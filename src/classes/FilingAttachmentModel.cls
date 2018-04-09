/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* An attachment associated with a filing return */

global class FilingAttachmentModel extends ErrorResult
{

    /// The resourceFileId used to retrieve the attachment
    global Integer? resourceFileId { get; set; }

    /// The description of the attachment
    global String description { get; set; }
}
