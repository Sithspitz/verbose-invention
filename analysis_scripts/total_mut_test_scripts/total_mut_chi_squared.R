# Total Mutation Comparison Using Chi Squared #
# A CSV file with just total mutations created 'total_mut.csv'

subtypes <- read.csv("~/Documents/R/R Local Projects/verbose-invention/data_input/total_mut.csv",
                     row.names=1)
subtypes

library(gplots)
library(graphics)

# Convert data as table
subtypes_table <- as.table(as.matrix(subtypes))

# Plot a mosaicplot

subtypes_plot <- mosaicplot(subtypes_table, shade = T, las =2,
           main = "subtypes")

# Do chi squared

subtypes_chi <- chisq.test(subtypes)
