#! /usr/bin/env python

"""
Methods that get information about input and output variables.

These BMI functions obtain information about a particular input or output
variable. They must accommodate any variable that is returned by the BMI
functions :func:`~bmi.info.BmiInfo.get_input_var_names` or
:func:`~bmi.info.BmiInfo.get_output_var_names`.
"""

"""Get data type of the given variable.

# Arguments
-------

- `var_name::String`: An input or output variable name, a CSDMS Standard Name.

# Returns
-------
String: Type of the variable

"""
function get_var_type(model::BmiBase, var_name::String)
end


"""
Get units of the given variable.

Standard unit names, in lower case, should be used, such as
``meters`` or ``seconds``. Standard abbreviations, like ``m`` for
meters, are also supported. For variables with compound units,
each unit name is separated by a single space, with exponents
other than 1 placed immediately after the name, as in ``m s-1``
for velocity, ``W m-2`` for an energy flux, or ``km2`` for an
area.

# Arguments
----------
- `var_name::String`: An input or output variable name, a CSDMS Standard Name.

# Returns
-------
String: The variable units.

Notes
-----
CSDMS uses the `UDUNITS`_ standard from Unidata.

.. _UDUNITS: http://www.unidata.ucar.edu/software/udunits

"""
function get_var_units(model::BmiBase, var_name::String)
end


"""
Get memory use for each array element in bytes.

# Arguments
----------
- `var_name::String`: An input or output variable name, a CSDMS Standard Name.

# Returns
-------
Int: Item size in bytes.
"""
function get_var_itemsize(model::BmiBase, var_name::String)
end


"""Get size, in bytes, of the given variable.

# Arguments
----------
- `var_name::String`: An input or output variable name, a CSDMS Standard Name.

# Returns
-------
Int: The size of the variable, counted in bytes.


"""
function get_var_nbytes(model::BmiBase, var_name::String)
end


"""Get grid identifier for the given variable.

# Arguments
----------
- `var_name::String`: An input or output variable name, a CSDMS Standard Name.

# Returns
-------
Int: The grid identifier.

See Also
--------
bmi.info.BmiInfo.get_input_var_names : Get *var_name* from this
    method or from :func:`~bmi.info.BmiInfo.get_output_var_names`.

"""
function get_var_grid(model::BmiBase, var_name::String)
end
