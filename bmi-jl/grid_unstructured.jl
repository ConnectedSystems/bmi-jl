"""
Interface that describes unstructured grids.

Methods that describe an unstructured grid.
.. figure:: _static/grid_unstructured.png
    :scale: 10%
    :align: center
    :alt: An example of an unstructured grid.
"""

include("grid.jl")


"""Get coordinates of grid nodes in the streamwise direction.
# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like : The positions of the grid nodes.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_x(grid::BmiGrid, grid_id::Int)
end


"""Get coordinates of grid nodes in the transverse direction.
# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like : The positions of the grid nodes.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_y(grid::BmiGrid, grid_id::Int)
end


"""Get coordinates of grid nodes in the normal direction.

# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like : The positions of the grid nodes.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id
"""
function get_grid_z(grid::BmiGrid, grid_id::Int)
end


"""Get connectivity array of the grid.
# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like or int : The graph of connections between the grid nodes.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_connectivity(grid::BmiGrid, grid_id::Int)
end


"""Get offsets for the grid nodes.
# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like of int: The offsets for the grid nodes.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_offset(grid::BmiGrid, grid_id::Int)
end
