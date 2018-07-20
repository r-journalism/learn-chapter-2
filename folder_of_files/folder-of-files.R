
# If you don't have devtools installed yet, uncomment and run the line below
#install.packages("devtools")

devtools::install_github("andrewbtran/muckrakr")
library(muckrakr)

# bulk_csv(folder = "DEFAULTBULKCSV2017", export = "filenamedefaultbulkcsv2018.csv"")

combined_data <- bulk_csv(folder="data/csvs")

bulk_csv(folder="data/csvs", export="combined_data.csv")

bulk_csv(folder="data/csvs", export="data/data_export/combined_data.csv")
