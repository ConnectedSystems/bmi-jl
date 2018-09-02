#! /usr/bin/env julia
"""Interface that describes a model and it's input and output variables."""


"""Get metadata about a model."""


"""Name of the component.

Return the name of the component
-------
str
  The name of the component.

Notes
-----
.. code-block:: c

    /* C */
    int get_component_name(void * self, char * name);
"""
function get_component_name(model::BmiBase)::String
    return model.name
end


"""List of a model's input variables.

Input variable names must be CSDMS Standard Names, also known
as *long variable names*.

Returns
-------
list of str
  The input variables for the model.

Notes
-----
Standard Names enable the CSDMS framework to determine whether
an input variable in one model is equivalent to, or compatible
with, an output variable in another model. This allows the
framework to automatically connect components.

Standard Names do not have to be used within the model.

Notes
-----
.. code-block:: c

    /* C */
    int get_input_var_name_count(void * self, int * count);
    int get_input_var_names(void * self, char ** names);
"""
function get_input_var_names(model::BmiBase):
end


"""List of a model's output variables.

Output variable names must be CSDMS Standard Names, also known
as *long variable names*.

Returns
-------
list of str
  The output variables for the model.

See Also
--------
get_input_var_names

Notes
-----
.. code-block:: c

    /* C */
    int get_output_var_name_count(void * self, int * count);
    int get_output_var_names(void * self, char ** names);
"""
function get_output_var_names(model::BmiBase):
end
