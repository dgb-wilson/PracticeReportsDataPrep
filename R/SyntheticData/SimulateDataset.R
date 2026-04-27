# generate a synthetic dataset to use in the demo workflow

# create a database using duckdb

con <- dbConnect(duckdb::duckdb(), 
                 dbdir = "Data/PracticeReportData.duckdb", 
                 read_only = FALSE)

# load functions
source("R/SyntheticData/SimulateFunctions/fSimulatePracticeList.R")

# seed for reproducibility
set.seed(123)

# add practice table
practicelist <- fSimulatePracticeList(nb_phns = sim_params$nb_phns,
                                      nb_practices_per_phn = sim_params$nb_practices_per_phn)
dbWriteTable(con, 
             "GPEHR_PRACTICE", 
             practicelist,
             overwrite = TRUE)


disconnectdb(con)


