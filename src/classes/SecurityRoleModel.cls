global class SecurityRoleModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this security role.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// A description of this security role
        /// </summary>
        global String description { get; set; }
}