#MA Plot
plotMA(resOrdered, ylim = c(-5, 5))

# Volcano plot of DEGs
EnhancedVolcano(resOrdered,
                lab = rownames(resOrdered),
                x = "log2FoldChange",
                y = "padj",
                title = "Volcano Plot",
                pCutoff = 0.05,
                FCcutoff = 1)

# Extract significant genes for heatmap
sig_genes <- rownames(resOrdered)[which(resOrdered$padj < 0.05)]

# Apply variance stabilizing transformation
vsd <- vst(dds, blind = FALSE)

# Plot heatmap of significant genes
pheatmap(assay(vsd)[sig_genes,], cluster_rows = TRUE, show_rownames = TRUE)
