# =============================================================================
# requirements.R
#
# Install and load all required packages for this project
# Usage: source("requirements.R")
# =============================================================================

# List of required packages
required_pkgs <- c(
  "tidyverse",    # data wrangling & ggplot2
  "lubridate",    # date/time parsing
  "cowplot",      # plot grids
  "ggpubr",       # publication-ready plots
  "readr",        # fast reading
  "gridExtra",    # arranging grid-based plots
  "knitr",        # report generation
  "MASS",         # statistical functions
  "car",          # companion to applied regression
  "lme4",         # mixed-effects models
  "lmerTest",     # p-values for lme4
  "sjPlot",       # plotting model results
  "Matrix",       # dense & sparse matrices
  "arm",          # regression & multilevel models
  "glmmTMB",      # generalized linear mixed models
  "ggpmisc",      # stat_poly_eq
  "reshape2",     # melting & casting
  "kableExtra",   # HTML/LaTeX tables
  "psych",        # collinearity & psychometrics
  "jtools",       # model summaries & plotting
  "latex2exp",    # LaTeX expressions in plots
  "ggeffects",    # marginal effects plots
  "scales"        # axis scaling
)

# Install any missing packages
missing_pkgs <- setdiff(required_pkgs, rownames(installed.packages()))
if (length(missing_pkgs) > 0) {
  message("Installing missing packages: ", paste(missing_pkgs, collapse = ", "))
  install.packages(missing_pkgs)
}

# Load all required packages
invisible(lapply(required_pkgs, library, character.only = TRUE))
