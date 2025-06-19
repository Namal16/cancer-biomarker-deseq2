Cancer Biomarker Discovery with DESeq2
Analysis on airway dataset (simulates cancer vs control)
1.	Load libraries
library(DESeq2)
library(airway)
library(pheatmap)
library(EnhancedVolcano)
library(ggplot2)

2.	Load data
data(airway)
airway$dex <- as.factor(airway$dex)  # ensure 'dex' is a factor

3.	Create DESeq2 object
dds <- DESeqDataSet(airway, design = ~ cell + dex)
dds <- DESeq(dds)
res <- results(dds)

4.	Filter significant DEGs
sig <- res[which(res$padj < 0.05 & abs(res$log2FoldChange) > 1), ]

5.	Save results
dir.create("results", showWarnings = FALSE)
write.csv(as.data.frame(sig), "results/significant_DEGs.csv")

6.	Volcano Plot
png("results/volcano_plot.png", width = 800, height = 600)
EnhancedVolcano(res,
  lab = rownames(res),
  x = "log2FoldChange",
  y = "pvalue",
  title = "Volcano Plot of DE Genes")
dev.off()

7.	PCA Plot
vsd <- vst(dds, blind = FALSE)
png("results/pca_plot.png", width = 800, height = 600)
plotPCA(vsd, intgroup = "dex")
dev.off()

8.	MA Plot
png("results/ma_plot.png", width = 800, height = 600)
plotMA(res, ylim = c(-5, 5))
dev.off()

9.	Heatmap of top 50 DEGs
topGenes <- head(order(res$padj), 50)
png("results/heatmap_top50.png", width = 1000, height = 800)
pheatmap(assay(vsd)[topGenes, ], scale = "row")
dev.off()
