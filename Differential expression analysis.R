# Differential expression analysis
dds <- DESeq(dds)

#checking results
res <- results(dds, contrast = c("dex", "trt", "untrt"))


#Sorting and viewing top genes
resOrdered <- res[order(res$padj),]
head(resOrdered)
summary(resOrdered)
