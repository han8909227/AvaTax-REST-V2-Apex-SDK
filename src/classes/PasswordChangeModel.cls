global class PasswordChangeModel extends ErrorResult
    {
        /// <summary>
        /// Old Password
        /// </summary>
        global String oldPassword { get; set; }

        /// <summary>
        /// New Password
        /// </summary>
        global String newPassword { get; set; }
}