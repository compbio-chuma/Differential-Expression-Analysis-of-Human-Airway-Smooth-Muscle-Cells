#inspect data

colnames(airway)

str(airway)

metadata(airway)

head(airway)

colData(airway)

# Convert airway dataset to DESeqDataSet
airway$dex <- relevel(airway$dex, ref = "untrt")
dds <- DESeqDataSet(airway, design = ~ cell + dex)

# Pre-filter to remove genes with low counts
dds <- dds[rowSums(counts(dds)) > 1,]




