#! /usr/bin/env julia
"""Interface for getting and setting a model's internal variables."""

"""Get a copy of values of the given variable.

This is a getter for the model, used to access the model's
current state. It returns a *copy* of a model variable, with
the return type, size and rank dependent on the variable.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.

Returns
-------
array_like
  The value of a model variable.

Notes
-----
.. code-block:: c

    /* C */
    int get_value(void * self, const char * var_name, void * buffer);
"""
function get_value(model::BmiBase, var_name::AbstractString)
    return deepcopy(get_value_ref(model, var_name))
end


"""Get a reference to values of the given variable.

This is a getter for the model, used to access the model's
current state. It returns a reference to a model variable,
with the return type, size and rank dependent on the variable.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.

Returns
-------
array_like
  A reference to a model variable.

Notes
-----
.. code-block:: c

    /* C */
    int get_value_ref(void * self, const char * var_name,
                      void ** buffer);
"""
function get_value_ref(model::BmiBase, var_name)
    return getfield(model, var_name)
end


"""Get values at particular indices.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.
indices : array_like
  The indices into the variable array.

Returns
-------
array_like
    Value of the model variable at the given location.

Notes
-----
.. code-block:: c

    /* C */
    int get_value_at_indices(void * self, const char * var_name,
                             void * buffer, int * indices, int len);
"""
function get_value_at_indices(model::BmiBase, var_name, indices)
end

# Setters


"""Specify a new value for a model variable.

This is the setter for the model, used to change the model's
current state. It accepts, through *src*, a new value for a
model variable, with the type, size and rank of *src*
dependent on the variable.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.
src : array_like
  The new value for the specified variable.

Notes
-----
.. code-block:: c

    /* C */
    int set_value(void * self, const char * var_name, void * src);
"""
function set_value(model::BmiBase, var_name, src)
end

"""Specify a new value for a model variable at particular indices.

Parameters
----------
var_name : str
  An input or output variable name, a CSDMS Standard Name.
indices : array_like
  The indices into the variable array.
src : array_like
  The new value for the specified variable.

Notes
-----
.. code-block:: c

    /* C */
    int set_value_at_indices(void * self, const char * var_name,
                             int * indices, int len, void * src);
"""
function set_value_at_indices(model::BmiBase, var_name, indices, src)
end
