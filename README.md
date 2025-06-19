### Cancer Biomarker Discovery using DESeq2 (Simulated)

This project simulates a CANCER BIOMARKER DIFFERENTIAL EXPRESSION ANALYSIS using the `airway` dataset, which mimics control vs treated groups. It uses `DESeq2`, a powerful R package for RNA-Seq data analysis.
### 1.	Tools & Technologies
-	R, Bioconductor
-	DESeq2
-	Enhanced Volcano
-	pheatmap
-	ggplot2

### 2.	Analysis Pipeline
I.	Load airway RNA-Seq data
II.	Create DESeq2 object
III.	Perform differential gene expression analysis
IV.	Filter significant genes (adj. p < 0.05 and |log2FC| > 1)
### Visualize with:
	Volcano plot
	PCA plot
	MA plot
	Heatmap

### 3.	Results
Results are saved in the `results/` folder:
-	`volcano_plot.png`
-	`pca_plot.png`
-	`ma_plot.png`
-	`heatmap_top50.png`
-	`significant_DEGs.csv`

### 4.	 Skills Demonstrated
-	RNA-seq data preprocessing
-	DE analysis with DESeq2
-	Biological data visualization
-	Portfolio-ready project documentation
  # ⚠️ This is a simulated project using the airway dataset. For real cancer projects, you can use TCGA or GEO datasets.
