"""
    module IrosDefaults

Contains the default parameters for constructing and plotting a simulation.

This gathers the important constants in one spot for easy modification by the user.
"""
module IrosDefaults

# shape defaults
const NL_NORMAL_ALGORITHM = :LD_MMA # NLopt algorithm used to find the normal, tangent, and distance to shape perimeter
const NL_NORMAL_XTOL = 1e-4 # NLopt's xtol_rel
const NL_NORMAL_FTOL = 1e-4 # NLopt's ftol_rel
const NL_NORMAL_MAXEVAL = 250 # NLopt's maxeval

# PML params used in Boundaries
const EXTINCTION = 1e-10 # extinction in PML layer
const SCALING_ANGLE = .25 # phase in conductivity to accelerate evanscent decay

const NUM_SUB_PIXEL = 5 # default for sub-pixel smoothing in Simulations

# for interpolating in Simulations
const N_CUBIC = 10
const N_QUADRATIC = 6
const N_BILINEAR = 4
const N_LINEAR = 3

const NNN_BULK = N_CUBIC # number of nearest neighbors used in bulk
const NNN_SURFACE = N_LINEAR # number of nearest neighbors for surface
const NNN_CORNER = N_LINEAR # number of nearest neighbors at corners


# for plotting
const SHAPE_FILL_ALPHA = .2
const SHAPE_COLOR = :red
const BOUNDARY_COLOR = :gray
const BOUNDARY_PML_COLOR = :blue
const BOUNDARY_CPML_COLOR = :red
const BOUNDARY_DIRICHLET_LINETYPE = :solid
const BOUNDARY_NEUMANN_LINETYPE = :dash
const BOUNDARY_FLOQUET_MATCHED_LINETYPE = :dashdot
const BOUNDARY_BC_COLOR = :black
const MARKERSHAPE = :rect
const LINK_SCALE_REDUCTION = 1/2
const MARKERSIZE_SCALE = 135
const PLOT_QUANTILE = .95 # optimize the dynamic range of plotting wavefunctions to cover this percentile
const PLOT_SCALE_FUDGE = 1.3 # multiply plot_quantile result by this factor to get colorbar scale


export NL_NORMAL_ALGORITHM,
NL_NORMAL_XTOL,
NL_NORMAL_FTOL,
NL_NORMAL_MAXEVAL,
EXTINCTION,
SCALING_ANGLE,
NUM_SUB_PIXEL,
N_CUBIC,
N_QUADRATIC,
N_BILINEAR,
N_LINEAR,
NNN_BULK,
NNN_SURFACE,
NNN_CORNER,
SHAPE_COLOR,
SHAPE_FILL_ALPHA,
BOUNDARY_COLOR,
BOUNDARY_PML_COLOR,
BOUNDARY_CPML_COLOR,
BOUNDARY_DIRICHLET_LINETYPE,
BOUNDARY_NEUMANN_LINETYPE,
BOUNDARY_FLOQUET_MATCHED_LINETYPE,
BOUNDARY_BC_COLOR,
MARKERSIZE_SCALE,
LINK_SCALE_REDUCTION,
MARKERSHAPE,
PLOT_QUANTILE,
PLOT_SCALE_FUDGE

end
