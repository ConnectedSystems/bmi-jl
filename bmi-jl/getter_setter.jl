#! /usr/bin/env julia
"""Interface for getting and setting a model's internal variables."""

"""Get a copy of values of the given variable.

This is a getter for the model, used to access the model's
current state. It returns a *copy* of a model variable, with
the return type, size and rank dependent on the variable.

# Arguments
-------

- `var_name::String`: An input or output variable name, a CSDMS Standard Name.

# Returns
-------
A copy of the model variable value.

"""
function get_value(model::BmiBase, var_name::String)
    return deepcopy(get_value_ref(model, var_name))
end


"""Get a reference to values of the given variable.

This is a getter for the model, used to access the model's
current state. It returns a reference to a model variable,
with the return type, size and rank dependent on the variable.

# Arguments

- `var_name::String`: An input or output variable name, a CSDMS Standard Name.

# Returns
-------

Return a reference to a model variable.

"""
function get_value_ref(model::BmiBase, var_name::String)
    return getfield(model, var_name)
end


"""Get values at particular indices.

# Arguments
-------

- `var_name::String`: An input or output variable name, a CSDMS Standard Name.
- `indices`: array_like, the indices into the variable array.

# Returns
-------

Value(s) of the model variable at the given location.

"""
function get_value_at_indices(model::BmiBase, var_name::String, indices)
end

"""Specify a new value for a model variable.

This is the setter for the model, used to change the model's
current state. It accepts, through *src*, a new value for a
model variable, with the type, size and rank of *src*
dependent on the variable.

# Arguments
-------

- `var_name::String`: An input or output variable name, a CSDMS Standard Name.
- `src`: The new value for the specified variable.

"""
function set_value(model::BmiBase, var_name::String, src)
end

"""Specify a new value for a model variable at particular indices.

# Arguments
-------

- `var_name::String`: An input or output variable name, a CSDMS Standard Name.
- `indices`: array_like, thei indices into the variable array.
- `src`: array_like, The new value for the specified variable.

"""
function set_value_at_indices(model::BmiBase, var_name::String, indices, src)
end
