/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/// The CoverLetter model represents a message sent along with an invitation to use CertExpress to
    /// upload certificates. An invitation allows customers to use CertExpress to upload their exemption 
    /// certificates directly; this cover letter explains why the invitation was sent.

global class CoverLetterModel extends ErrorResult
{

    /// A unique ID number representing a cover letter sent with a CertExpress invitation.
    global Integer? id { get; set; }

    /// The unique ID number of the AvaTax company that received this certificate.
    global Integer? companyId { get; set; }

    /// The title used when sending the cover letter.
    global String title { get; set; }

    /// The subject message used when sending the cover letter via email.
    global String subject { get; set; }

    /// A full description of the cover letter's contents and message.
    global String description { get; set; }

    /// The date when this record was created.
    global DateTime? createdDate { get; set; }

    /// The date/time when this record was last modified.
    global DateTime? modifiedDate { get; set; }

    /// Is this cover letter active
    global Boolean? active { get; set; }

    /// How many pages this cover letter encompasses
    global Integer? pageCount { get; set; }

    /// The file name of the cover letter template
    global String templateFilename { get; set; }

    /// The version number of the template
    global Integer? version { get; set; }
}
