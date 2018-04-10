/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Filing Frequency types */

global enum FilingFrequencyId
{

    // File once per month
    Monthly,

    // File once per three months
    Quarterly,

    // File twice per year
    SemiAnnually,

    // File once per year
    Annually,

    // File every other month
    Bimonthly,

    // File only when there are documents to report
    Occasional,

    // File for the first two months of each quarter, then do not file on the quarterly month.
    InverseQuarterly,

}
