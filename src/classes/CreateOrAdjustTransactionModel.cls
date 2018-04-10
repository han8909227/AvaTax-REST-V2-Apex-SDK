/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* Create or adjust transaction model */

global class CreateOrAdjustTransactionModel extends ErrorResult
{

    // The create transaction model to be created or updated. 
    //  
    // If the transaction does not exist, create transaction.
    // If the transaction exists, adjust the existing transaction.
    global CreateTransactionModel createTransactionModel { get; set; }
}
