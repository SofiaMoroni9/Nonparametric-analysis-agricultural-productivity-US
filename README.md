# Nonparametric-analysis-agricultural-productivity-US
Project for the Nonparametric Statistics course of the MSc in Mathematical Engineering @ Polimi (A.Y. 2022-2023).

I present a nonparametric analysis of the evolution of agricultural production in the United States from 1948 to 2019.I present a step-by-step analysis to provide meaningful information to optimize efficiency in agricultural production. I also provide a spatial analysis and a clustering across US States.

# Tables of contents
- [Installation](#installation)
   - [How to clone the repository](#how-to-clone-the-repository)
   - [How to install the packages](#how-to-install-the-packages)
- [Analysis and Results](#analysis-and-results)
- [Authors](#authors)

# Installation

## How to clone the repository 

```{r}
git clone https://github.com/SofiaMoroni9/Nonparametric-analysis-agricultural-productivity-US
```

## How to install the packages
Install the required packages from CRAN
```{r}
packages_list <-
    c(
        "tidyverse",
        "ggplot2",
        "mgcv",
        "rgl",
        "splines",
        "conformalInference",
        "pbapply",
        "parallel",
        "DepthProc",
        "progress",
        "dbscan",
        "beadplexr",
        "robustbase",
        "readxl",
        "tidyr",
        "car",
        "sp",
        "visreg",
        "mgcViz",
        "usmap",
        "raster",
        "sf",
        "maps",
        "ggspatial",
        "TraMineR",
        "dtw",
        "cluster"
    )
install.packages(packages_list)
```
# Analysis and Results
The repository contains different files to perform the analysis, here we report their explanation together with a hyperlink to the knitted PDF version:




