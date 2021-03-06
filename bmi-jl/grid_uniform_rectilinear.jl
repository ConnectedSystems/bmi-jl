"""Interface that describes uniform rectilinear grids."""

include("grid.jl")


"""Methods that describe a uniform rectilinear grid.
In a 2D uniform grid, every grid cell (or element) is a rectangle and all
cells have the same dimensions. If the dimensions are equal, then the
grid is a tiling of squares.
Each of these functions returns information about each dimension of a
grid. The dimensions are ordered with "ij" indexing (as opposed to "xy").
For example, the :func:`get_grid_shape` function for the example grid would
return the array ``[4, 5]``. If there were a third dimension, the length of
the z dimension would be listed first. This same convention is used in
NumPy. Note that the grid shape is the number of nodes in the coordinate
directions and not the number of cells or elements. It is possible for
grid values to be associated with the nodes or with the cells.
.. figure:: _static/grid_uniform_rectilinear.png
:scale: 10%
:align: center
:alt: An example of a uniform rectilinear grid
"""


"""
Get dimensions of the computational grid.

# Arguments
----------
- `grid_id::Int` : A grid identifier.
  A grid identifier.
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
Get distance between nodes of the computational grid.

# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like : The grid spacing.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_spacing(grid::BmiGrid, grid_id::Int)
end


"""
Get coordinates for the origin of the computational grid.

# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
- array_like : The coordinates of the lower left corner of the grid.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_origin(grid::BmiGrid, grid_id::Int)
end
