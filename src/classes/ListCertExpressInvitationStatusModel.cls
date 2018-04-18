/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Represent what is the current status of certificate request */

global class ListCertExpressInvitationStatusModel extends ErrorResult
{
    global List<CertExpressInvitationStatusModel> result { get; set; }
}
