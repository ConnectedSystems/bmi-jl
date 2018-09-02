"""
Interface that describes rectilinear grids.

Methods that describe a rectilinear grid.
In a 2D rectilinear grid, every grid cell (or element) is a rectangle but
different cells can have different dimensions. All cells in the same row
have the same grid spacing in the y direction and all cells in the same
column have the same grid spacing in the x direction. Grid spacings can
be computed as the difference of successive x or y values.
.. figure:: _static/grid_rectilinear.png
    :scale: 10%
    :align: center
    :alt: An example of a rectilinear grid
"""

include("grid.jl")


"""
Get dimensions of the computational grid.

# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
tuple of int, The dimensions of the grid.

See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_shape(grid::BmiGrid, grid_id::Int)
end


"""
Get coordinates of grid nodes in the streamwise direction.
Parameters
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
array_like of float : The positions of the grid nodes.

See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_x(grid::BmiGrid, grid_id::Int):
end


"""
Get coordinates of grid nodes in the transverse direction.

# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
array_like of float : The positions of the grid nodes.

See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_y(grid::BmiGrid, grid_id::Int):
end


"""
Get coordinates of grid nodes in the normal direction.
Parameters
----------
- `grid_id::Int` : A grid identifier.

Returns
-------
array_like of float : The positions of the grid nodes.

See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_z(grid::BmiGrid, grid_id::Int):
end
