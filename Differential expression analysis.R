# Differential expression analysis
dds <- DESeq(dds)

# Log 2 fold shrinkage for more stable effect sizes
#checking results
res <- lfcShrink(dds, contrast = c("dex", "trt", "untrt"), type = "normal")


#Sorting and viewing top genes
resOrdered <- res[order(res$padj),]
head(resOrdered)
summary(resOrdered)
