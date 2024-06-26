#' ------------------------------------------------------------------------------------------------------------- 

#' Download and extract BMI data from CDC NHANES data set.
#' Variation of sample code provided by NHANES, see e.g.
#' Example R code to replicate NCHS Data Brief No.303, Figures 1                                                  
#' Prevalence of Depression Among Adults Aged 20 and Over: United States, 2013-2016                             

#' Brody DJ, Pratt LA, Hughes JP. Prevalence of Depression Among Adults Aged 20 and Over: United                
#' States, 2013-2016. NCHS Data Brief. No 303. Hyattsville, MD: National Center for Health Statistics. 2018.                     

#' Available at: https://www.cdc.gov/nchs/products/databriefs/db303.htm                                         

#' ------------------------------------------------------------------------------------------------------------  

# Load survey and dplyr packages
#+ message = FALSE, warning=FALSE
#library(tidyverse)
library(dplyr)
library(survey)
#'
PBMX <- foreign::read.xport("Data/2017-2020-P_BMX.XPT")
#
# Extract BMI and other obesity related data
# Variables: BMDBMIC, BMXBMI, BMXHT, BMXWAIST, BMXWT, SEQN
Obesity <- select(PBMX, "BMDBMIC", "BMXBMI", "BMXHT", "BMXWAIST", "BMXWT")
summary(Obesity)

write.csv(Obesity,"./NHANES-obesity.csv")




