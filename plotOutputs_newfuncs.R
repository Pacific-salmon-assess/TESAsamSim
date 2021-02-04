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



# plot_bias_boxplots

# Read in outputs of fitDLM and save boxplots of bias of estimates of alpha and beta
# will need to change "example" to folder of automated outputs and scen to names of 
#     scenarios from table of scenarios to loop over/map over

scenario <- "simDataIncreaseProdyCU1"

plot_bias_boxplots <- function(scenario) {

  dlm_out <- readRDS(here( paste0(scenario, ".Rdata")))$results # read in dlm output file (format and location subject to change)
  
  pms <- dlm_out %>%
    group_by(CU, iteration) %>% # will need to add scenario column as well
    dplyr::summarize(
      alpha_mpb=mean((alpha_true-alpha)/alpha_true)*100,
      beta_mpb=mean((beta_true-beta)/beta_true)*100) %>%
    pivot_longer(alpha_mpb:beta_mpb,names_to="parameter",values_to="mpb")

ggplot(data=pms,aes(x=factor(scenario), y=mpb, fill=parameter))+
  geom_boxplot(outlier.shape = NA)+
  xlab("Stock depletion") +
  ylab("Mean % bias") +
  coord_cartesian(ylim=c(-100,400))+
  scale_fill_viridis_d(labels=c("alpha", "beta"))+
  facet_wrap(~CU) +
  theme_bw() 
}









