global class SubscriptionTypeModel extends ErrorResult
    {
        /// <summary>
        /// The unique ID number of this subscription type.
        /// </summary>
        global Long id { get; set; }

        /// <summary>
        /// The friendly name of the service this subscription type represents.
        /// </summary>
        global String description { get; set; }

}