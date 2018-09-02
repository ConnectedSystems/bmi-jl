"""Interface that describes uniform rectilinear grids."""

abstract type BmiGrid end

"""
Get number of dimensions of the computational grid.

# Arguments
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
Int: Rank of the grid.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.

"""
function get_grid_rank(grid::BmiGrid, grid_id::Int)
end


"""
Get the total number of elements in the computational grid.

# Parameters
----------
grid_id : int
  A grid identifier.

# Returns
-------
Int: Size of the grid.

# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.

"""
function get_grid_size(grid::BmiGrid, grid_id::Int)
end

"""
Get the grid type as a string.

# Parameters
----------
- `grid_id::Int` : A grid identifier.

# Returns
-------
String: Type of grid as a string.


# See Also
--------
bmi.vars.BmiVars.get_var_grid : Obtain a `grid_id`.
"""
function get_grid_type(grid::BmiGrid, grid_id::Int)
end
