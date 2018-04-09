/*
 * AvaTax API Client Library
 *
 * (c) 2004-2018 Avalara, Inc.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 */

/* The "Unit of Measurement" model captures information about a type of measurement. Types of measurement refer to 
    // different scales for the same dimension. For example, measurements of type "Distance" may include units of measurement
    // such as meters, feet, inches, and miles. */

global class UomModel extends ErrorResult
{

    /// The unique ID number of this unit of measurement.
    global Integer id { get; set; }

    /// The code that refers to this unit of measurement.
    global String code { get; set; }

    /// A short description of this unit of measurement.
    global String shortDesc { get; set; }

    /// A longer description of this unit of measurement.
    global String description { get; set; }

    /// The ID number of the measurement type, such as "Distance" or "Mass".
    global Integer measurementTypeId { get; set; }

    /// The code describing the measurement type.
    global String measurementTypeCode { get; set; }

    /// For a particular measurement type, this is the ID number of the unit of measurement object corresponding to the 
    // International System of Units (abbreviated SI) unit of measurement standard. This pointer allows you to select
    // the SI unit of measurement for a particular measurement type.
    global String siUOM { get; set; }

    /// A description of the measurement type system.
    global String measurementTypeDescription { get; set; }

    /// True if this measurement is an International System of Units (abbreviated SI) defined standard.
    global Boolean isSiUom { get; set; }
}
