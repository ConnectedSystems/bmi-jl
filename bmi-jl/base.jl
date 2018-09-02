abstract type BmiBase end

"""
Functions that control model execution.

These BMI functions are critical to plug-and-play modeling because they
give a calling component fine-grained control over the model execution.
"""

"""Perform startup tasks for the model.
Perform all tasks that take place before entering the model's time
loop, including opening files and initializing the model state. Model
inputs are read from a text-based configuration file, specified by
`filename`.

# Arguments
-------

- `filename::String`: path to the model configuration file.

# Notes
-------

Models should be refactored, if necessary, to use a configuration file.
CSDMS does not impose any constraint on how configuration files are formatted,
although YAML is recommended. A template of a model's configuration file
with placeholder values is used by the BMI.
"""
function initialize(model::BmiBase, filename::String)
end


"""
Advance model state by one time step.

Perform all tasks that take place within one pass through the model's
time loop. This typically includes incrementing all of the model's
state variables. If the model's state variables don't change in time,
then they can be computed by the :func:`initialize` method and this
method can return with no action.
"""
function update(model::BmiBase)
end


"""
Advance model state until the given time.

# Arguments
-------

- `time`: numeric, a model time value.

# See Also
-------
- update

"""
function update_until(model::BmiBase, time)
end


"""
Perform tear-down tasks for the model.

Perform all tasks that take place after exiting the model's time
loop. This typically includes deallocating memory, closing files and
printing reports.

# Arguments
-------
- `time_frac`: numeric, a model time fraction value.

"""
function update_frac(model::BmiBase, time_frac)
end


"""
Perform tear-down tasks for the model.

Perform all tasks that take place after exiting the model's time
loop. This typically includes deallocating memory, closing files and
printing reports.
"""
function finalize(model::BmiBase)
end
