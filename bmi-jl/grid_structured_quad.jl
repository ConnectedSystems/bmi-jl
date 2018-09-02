"""Interface that describes structured quadrilateral grids."""

include("grid.jl")

"""
Methods that describe a structured grid of quadrilaterals.
.. figure:: _static/grid_structured_quad.png
    :scale: 10%
    :align: center
    :alt: An example of a structured quad grid.
"""

"""Get dimensions of the computational grid.
# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like : The dimensions of the grid.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_shape(grid::BmiGrid, grid_id::Int)
end


"""
Get coordinates of grid nodes in the streamwise direction.
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


"""
Get coordinates of grid nodes in the transverse direction.
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


"""
Get coordinates of grid nodes in the normal direction.
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
function get_grid_z(grid::BmiGrid, grid_id::Int)
end


class BmiGridStructuredQuad(BmiGrid):
