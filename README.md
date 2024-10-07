# Differential-Expression-Analysis-of-Human-Airway-Smooth-Muscle-Cells Dataset

## Description
This project conducts a comprehensive differential expression analysis on the airway dataset, utilizing the **DESeq2** package in R. The analysis aims to identify genes that exhibit significant differences in expression levels across different conditions, providing insights into biological processes and potential therapeutic targets.

### Background
The airway dataset is commonly used in studies related to respiratory diseases and can serve as a reference for understanding gene expression dynamics in airway tissues. Differential expression analysis helps researchers identify specific genes that are upregulated or downregulated under various experimental conditions.

## Files
- **`deseq2_results.csv`**: Contains the results of the differential expression analysis, including log2 fold changes, p-values, and adjusted p-values for each gene.
- **`Setting_up_project_environment.R`**: Script for setting up the project environment, including loading necessary libraries and configuring settings.
- **`Data_Preprocessing.R`**: Script for preprocessing the data, including loading the dataset, filtering low-count genes, and normalizing the data.
- **`Differential_Expression_Analysis.R`**: Script for performing the differential expression analysis using DESeq2, including creating the DESeqDataSet object and running the statistical tests.
- **`Results_Visualization.R`**: Script for visualizing the results through various plots, such as MA plots, heatmaps, and volcano plots.
- **`Results.R`**: Script for saving and summarizing the final results, including exporting the DESeq2 results to `deseq2_results.csv`.

## Directory Structure
/airway_differential_expression_analysis/ │ ├── deseq2_results.csv ├── Setting_up_project_environment.R ├── Data_Preprocessing.R ├── Differential_Expression_Analysis.R ├── Results_Visualization.R └── Results.R


## Steps

### 1. Setting Up Project Environment
- The **`Setting_up_project_environment.R`** file contains code for loading necessary libraries and configuring the project environment. It includes:
  - Loading packages such as `DESeq2`, `airway`, `pheatmap`, and `EnhancedVolcano`.
  - Setting global options for R sessions.
  - Defining file paths and initial parameters for the analysis.

### 2. Data Preprocessing
- The **`Data_Preprocessing.R`** file includes steps for preparing the data for analysis. Key components include:
  - Loading the airway dataset.
  - Exploring the dataset to understand its structure.
  - Filtering out low-count genes to reduce noise and enhance the robustness of the analysis.
  - Normalizing the data to account for differences in sequencing depth across samples.

### 3. Differential Expression Analysis
- The **`Differential_Expression_Analysis.R`** file contains the core analysis code for identifying differentially expressed genes. It involves:
  - Creating a DESeqDataSet object from the filtered count matrix.
  - Normalizing the data using size factors.
  - Conducting the differential expression analysis using DESeq2, including fitting the model and performing statistical tests.
  - Extracting results, including log2 fold changes and adjusted p-values.

### 4. Results Visualization
- The **`Results_Visualization.R`** file is dedicated to generating various visualizations to help interpret the analysis results. This includes:
  - Creating MA plots to show the relationship between mean expression and log2 fold changes.
  - Generating heatmaps to visualize the expression patterns of significant differentially expressed genes.
  - Producing volcano plots to visualize the significance versus magnitude of change for all genes, highlighting the most significantly differentially expressed genes.

### 5. Results
- The **`Results.R`** file is used to save and summarize the final results of the analysis. Key tasks include:
  - Exporting the results of the differential expression analysis to `deseq2_results.csv`, which contains the gene identifiers, log2 fold changes, raw p-values, and adjusted p-values.
  - Optionally summarizing key findings, such as the number of significant genes identified, for further reporting or analysis.

## Reproducibility
To reproduce the analysis, clone this repository and follow these steps:

1. Ensure you have R and RStudio installed on your machine.
2. Install the necessary R packages, if not already installed:
   ```R
   install.packages("BiocManager")
   BiocManager::install(c("DESeq2", "airway", "pheatmap", "EnhancedVolcano"))

