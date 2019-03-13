# verbose-invention #
Immune Phenotype (Saltz) Statistical Comparison (25/02/19)

Original comparison done by Yi Pan (on 24/02/19).

Repo here hosting the R file and data.

Data from STK11, KRAS and KRAS/STK11 MTs from TCGA PanCancer vs without MTs.

Statistically sig differences.



# My go 12/03/19

I put all the files Yi made and did in a 'Yi_Script' dir.

Using the instructions on http://www.sthda.com/english/wiki/chi-square-test-of-independence-in-r
I had another go at this.

Created 'total_mut_chi_squared.R' as a basic training set to do a chi squared test
And made a CSV file.

A few gos and then decided to do the below:


# Full Immune Subtype Chi Squared Comparison R Script # 

Making a script which analyses all of these, called 'immune_subtype_chi_sq_comparisons.R'.

Using a Chi-Squared test with Fisher's Correction.
The comparisons in this R file as as follows:
1: Overview comparing all groups vs one another ('all_data.csv'). 
    Groups: without any MT, with any MT, STK11 MT, KRAS MT, KRAS/STK11 MT
    Here I created a mosiacplot as well to visualise.
    COMPARISON SIG.

2: Without MT vs with MT ('total_mut.csv')
    Groups: all WT vs all with a MT in KRAS and/or STK11.
    COMPARISON SIG.

3: Without MT vs with STK11 MT ('stk11_mut.csv')
    Groups: all WT vs STK11 MT only.
    COMPARISON NS.
    
4: Without MT vs with KRAS MT ('kras_mut.csv')
    Groups: all WT vs KRAS MT only.
    COMPARISON SIG.
    
5: With MT vs with double KRAS/STK11 MT ('kras_stk11_mut.csv')
    Groups: all WT vs KRAS/STK11 double MT.
    COMPARISON SIG.
    
Decided that as the expected frequencies for the STK11 MT and KRAS/STK11 MT groups are low, that am going to use a Fisher's Test as well to compare these groups and also KRAS MT group vs the WT.

Below are the results of the Fisher's Test for each group:
3: Without MT vs with STK11 MT ('stk11_mut.csv')
    FISHER'S COMPARISON NS
    
4: Without MT vs with KRAS MT ('kras_mut.csv')
    FISHER'S COMPARISON SIG
    
5: With MT vs with double KRAS/STK11 MT ('kras_stk11_mut.csv')
    FISHER'S COMPARISON SIG
