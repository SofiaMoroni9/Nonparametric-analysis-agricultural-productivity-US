# Nonparametric-analysis-agricultural-productivity-US
Project for the Nonparametric Statistics course of the MSc in Mathematical Engineering @ Polimi (A.Y. 2022-2023).

I present a nonparametric analysis of the evolution of agricultural production in the United States from 1948 to 2019.I present a step-by-step analysis to provide meaningful information to optimize efficiency in agricultural production. I also provide a spatial analysis and a clustering across US States.

# Tables of contents
- [Installation](#installation)
   - [How to clone the repository](#how-to-clone-the-repository)
   - [How to install the packages](#how-to-install-the-packages)
- [Analysis and Results](#analysis-and-results)
- [Author](#author)

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
- [01-Permutational_Tests_Spearman_corr](01-Permutational_Tests_Spearman_corr.pdf) : contains the permutational tests of the difference in means of variables between two periods and the computations for Spearman Coefficient.
- [02-Conformal_Prediction](02-Conformal_Prediction.pdf): contains the implementation of the prediction intervals using a conformal approach.
- [03-Permutational_Tests](03-Permutational_Tests.pdf): contains the permutation tests performed to reduce GAM and keep significant covariates only.
- [04_GAM](04_GAM.pdf): provides the implementation for the GAM model and the reverse percentile bootstrap confindence intervals.
- [05-Sequence_Clustering-MANOVA](05-Sequence_Clustering-MANOVA.pdf): provides the implementation of Sequence Clustering and Permutational Manova Analysis.
- [06-Spatial_Gam](06-Spatial_Gam.pdf): empowers a GAM using spatial coordinate.

The final presentation can be found here:
[Final_Presentation](Presentation/Final_Presentation.pdf)

The final report can be found here:
[Report_Nonparametric_Stats](Report/Report_Nonparametric_Stats.pdf)

# Author
Sofia Moroni






