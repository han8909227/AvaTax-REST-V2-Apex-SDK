/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* This model contains a reconstructed CreateTransaction request object that could potentially be used
    // to recreate this transaction.
    // 
    // Note that the API changes over time, and this reconstructed model is likely different from the exact request
    // that was originally used to create this transaction. */

global class ReconstructedApiRequestResponseModel extends ErrorResult
{

    // API request
    global CreateTransactionModel request { get; set; }
}
