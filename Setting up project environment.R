# Install BiocManager if it's not installed
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

# Install Bioconductor core packages
BiocManager::install()

# Install the necessary packages for the analysis
BiocManager::install(c("airway", "DESeq2", "EnhancedVolcano", "pheatmap"))

# Load the libraries
library(airway)
library(DESeq2)
library(EnhancedVolcano)
library(pheatmap)
library(ggplot2)
library(SummarizedExperiment)

# Load the airway dataset
data("airway")
