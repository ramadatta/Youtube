## Scanpy analysis

In this notebook, we will go through standard steps to analyze a single-cell RNA sequencing dataset (PBMC) from 10X Genomics using the #scanpy package

We cover the following sections:

1) Download public available PBMC dataset from 10X genomics website
2) Loading the gene count matrix (cell ranger output) into AnnData object
3) What:
    - is AnnData object? Different components of AnnData object
    - Section 1: Summary of AnnData object
    - Section 2: Inspection of newly created AnnData object
4) Section 3: Quality Control on AnnData object
5) Section 4: Filtering cells and genes
6) Section 5: Normalization of data 
7) Section 6: Finding Highly variable genes
8) Section 7: Scaling the data
9) Section 8: Perform PCA analysis
10) Section 9: Finding Neighbors
11) Section 10: Running UMAP and Visualization
