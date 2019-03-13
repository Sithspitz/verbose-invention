## Immune Subtype Chi Squared Comparisons ##

library(gplots)
library(graphics)


# Comparison 1: All TCGA with KRAS/STK11 alterations vs WT #
all_subtypes <- read.csv("~/Documents/R/R Local Projects/verbose-invention/data_input/all_data.csv",
                     row.names=1)
colnames(all_subtypes) <- c("Without STK11 and/or KRAS MT", "With STK11 and/or KRAS MT",
                             "STK11 MT", "KRAS MT", "KRAS/STK11 MT")
all_subtypes


# Convert data as table
subtypes_table <- as.table(as.matrix(all_subtypes))

# Plot a mosaicplot
subtypes_plot <- mosaicplot(subtypes_table, shade = T, las =2,
                            main = "Immune Subtypes")

# All vs WT chi squared
subtypes_chi <- chisq.test(all_subtypes, correct = T)
subtypes_chi
subtypes_chi <- as.data.frame(as.character(subtypes_chi))
write.table(subtypes_chi, file = "./Output/all_data_chi_sq.txt")


# Comparison 2: All WT vs all MT # 
# Import, Compare, Print, Export
total_subtypes <- read.csv("~/Documents/R/R Local Projects/verbose-invention/data_input/total_mut.csv",
                         row.names=1)
total_subtypes_chi <- chisq.test(total_subtypes, correct = T)
total_subtypes_chi
total_subtypes_chi <- as.data.frame(as.character(total_subtypes_chi))
write.table(total_subtypes_chi, file = "./Output/total_subtypes_chi_sq.txt")


# Comparison 3: All WT vs STK11 MT Only # 
# Import, Compare, Print, Export
stk11_test <- read.csv("~/Documents/R/R Local Projects/verbose-invention/data_input/stk11_mut.csv",
                           row.names=1)
stk11_test_chi <- chisq.test(stk11_test, correct = T)
stk11_test_chi
stk11_test_chi <- as.data.frame(as.character(stk11_test_chi))
write.table(stk11_test_chi, file = "./Output/stk11_mut_chi_sq.txt")
stk11_test_fisher <- fisher.test(stk11_test)
stk11_test_fisher
stk11_test_fisher <- as.data.frame(as.character(stk11_test_fisher))
write.table(stk11_test_fisher, file = "./Output/stk11_mut_fisher.txt")

# Comparison 4: All WT vs KRAS MT Only # 
# Import, Compare, Print, Export
kras_test <- read.csv("~/Documents/R/R Local Projects/verbose-invention/data_input/kras_mut.csv",
                       row.names=1)
kras_test_chi <- chisq.test(kras_test, correct = T)
kras_test_chi
kras_test_chi <- as.data.frame(as.character(kras_test_chi))
write.table(kras_test_chi, file = "./Output/kras_mut_chi_sq.txt")
kras_test_fisher <- fisher.test(kras_test)
kras_test_fisher
kras_test_fisher <- as.data.frame(as.character(kras_test_fisher))
write.table(kras_test_fisher, file = "./Output/kras_mut_fisher.txt")

# Comparison 5: All WT vs KRAS/STK11 Double MTs # 
# Import, Compare, Print, Export
kras_stk11_test <- read.csv("~/Documents/R/R Local Projects/verbose-invention/data_input/kras_stk11_mut.csv",
                      row.names=1)
kras_stk11_test_chi <- chisq.test(kras_stk11_test, correct = T)
kras_stk11_test_chi
kras_stk11_test_chi <- as.data.frame(as.character(kras_stk11_test_chi))
write.table(kras_stk11_test_chi, file = "./Output/kras_stk11_mut_chi_sq.txt")
kras_stk11_test_fisher <- fisher.test(kras_stk11_test)
kras_stk11_test_fisher
kras_stk11_test_fisher <- as.data.frame(as.character(kras_stk11_test_fisher))
write.table(kras_stk11_test_fisher, file = "./Output/kras_stk11_mut_fisher.txt")
