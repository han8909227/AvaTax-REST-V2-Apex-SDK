global class NexusTaxTypeGroupModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this nexus tax type group.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The unique human readable Id of this nexus tax type group.
        /// </summary>
        global String nexusTaxTypeGroupId { get; set; }

        /// <summary>
        /// The description of this nexus tax type group.
        /// </summary>
        global String description { get; set; }
}