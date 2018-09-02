#! /usr/bin/env python

doc"""Methods that get information about input and output variables.

These BMI functions obtain information about a particular input or output
variable. They must accommodate any variable that is returned by the BMI
functions :func:`~bmi.info.BmiInfo.get_input_var_names` or
:func:`~bmi.info.BmiInfo.get_output_var_names`.
"""

doc"""Get data type of the given variable.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.

Returns
-------
str
  The Python variable type; e.g., ``str``, ``int``, ``float``.

Notes
-----
.. code-block:: c

    /* C */
    int get_var_type(void * self, const char * var_name, char * type);
"""
function get_var_type(model::BmiBase, var_name)
end


"""Get units of the given variable.

Standard unit names, in lower case, should be used, such as
``meters`` or ``seconds``. Standard abbreviations, like ``m`` for
meters, are also supported. For variables with compound units,
each unit name is separated by a single space, with exponents
other than 1 placed immediately after the name, as in ``m s-1``
for velocity, ``W m-2`` for an energy flux, or ``km2`` for an
area.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.

Returns
-------
str
  The variable units.

Notes
-----
CSDMS uses the `UDUNITS`_ standard from Unidata.

.. code-block:: c

    /* C */
    int get_var_units(void * self, const char * var_name,
                      char * units);

.. _UDUNITS: http://www.unidata.ucar.edu/software/udunits

"""
function get_var_units(model::BmiBase, var_name)
end


"""Get memory use for each array element in bytes.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.

Returns
-------
int
  Item size in bytes.

Notes
-----
.. code-block:: c

    /* C */
    int get_var_itemsize(void * self, const char * var_name,
                         int * itemsize);
"""
function get_var_itemsize(model::BmiBase, var_name)
end


"""Get size, in bytes, of the given variable.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.

Returns
-------
int
  The size of the variable, counted in bytes.

Notes
-----
.. code-block:: c

    /* C */
    int get_var_nbytes(void * self, const char * var_name,
                       int * nbytes);
"""
function get_var_nbytes(model::BmiBase, var_name)
end


"""Get grid identifier for the given variable.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.

Returns
-------
int
  The grid identifier.

See Also
--------
bmi.info.BmiInfo.get_input_var_names : Get *var_name* from this
    method or from :func:`~bmi.info.BmiInfo.get_output_var_names`.

Notes
-----
.. code-block:: c

    /* C */
    int get_var_grid(void * self, const char * var_name, int * id);
"""
function get_var_grid(model::BmiBase, var_name)
end
