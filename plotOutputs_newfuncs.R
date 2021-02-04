# Code to make some new plots for TESAsamSim
# Authors: Robyn Forrest and Luke Warkentin

# Feb 4, 2021

# Functions:
#  
#   plot_bias_boxplots - this reads in the dlm model output and saves boxplots showing 
#                         bias of estimates of alpha and beta for different scenarios
#
#
#

# load libraries - these will move to Rmd file
library(tidyverse)
library(purrr)
library(reshape2)



# Read in outputs of fitDLM and save boxplots of bias of estimates of alpha and beta
# will need to change "example" to folder of automated outputs and scen to names of 
#     scenarios from table of scenarios to loop over/map over

scen <- "increaseProd_ref_CUsrDat"

readRDS( here("outputs","simData", "example", paste0(scen, ".RData")))$results












