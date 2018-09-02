#! /usr/bin/env julia
include("base.jl")

"""
Start time of the model.

Model times should be of type float. The default model start
time is 0.

# Returns
-------
float: The model start time.
"""
function get_start_time(model::BmiBase)
end


"""
Current time of the model.

# Returns
-------
float: The current model time.

# See Also
--------
- get_start_time
"""
function get_current_time(model::BmiBase)
end


"""
End time of the model.

# Returns
-------
float: The maximum model time.

See Also
--------
get_start_time
"""
function get_end_time(model::BmiBase)
end


"""
Current time step of the model.

The model time step should be of type float. The default time
step is 1.0.

# Returns
-------
float: The time step used in model.
"""
function get_time_step(model::BmiBase)
end


"""
Time units of the model.

# Returns
-------
float: The model time unit; e.g., `days` or `s`.


Notes
-----
CSDMS uses the UDUNITS standard from Unidata.
"""
function get_time_units(model::BmiBase)
end
