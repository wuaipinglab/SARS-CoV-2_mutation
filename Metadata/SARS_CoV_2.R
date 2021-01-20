cat("Reading...\n")
df <- read.csv("SARS_CoV_2.tsv", sep='\t')
cat("Selecting...\n")
outdf <- df[, c("gisaid_epi_isl", "region_exposure", "country_exposure", "date", "host", "pangolin_lineage", "Nextstrain_clade", "GISAID_clade")]
write.csv(outdf, "SARS_CoV_2.csv", row.names=F)
cat("Done\n")
