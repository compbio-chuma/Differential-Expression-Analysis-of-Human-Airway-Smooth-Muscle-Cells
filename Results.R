# Write results to CSV
write.csv(as.data.frame(res), file = "deseq2_results.csv")

# Write Ordered results to CSV
write.csv(as.data.frame(resOrdered), file = "deseq2_resultsOrdered.csv")