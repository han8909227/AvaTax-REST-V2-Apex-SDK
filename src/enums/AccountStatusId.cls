/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Status of an Avalara account */

global enum AccountStatusId
{

    /// This account is not currently active.
    Inactive,

    /// This account is active and in use.
    Active,

    /// This account is flagged as a test account and may be temporary.
    Test,

    /// The account is new and is currently in the onboarding process.
    New,

}
