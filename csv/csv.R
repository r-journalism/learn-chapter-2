df_csv <- read.csv("https://data.ct.gov/api/views/iyru-82zq/rows.csv?accessType=DOWNLOAD", stringsAsFactors=F)
head(df_csv, 10)

df_csv <- read.csv("data/Admissions_to_DMHAS_Addiction_Treatment_by_Town__Year__and_Month.csv", stringsAsFactors=F)

df_csv <- read.csv("data/Admissions_to_DMHAS_Addiction_Treatment_by_Town__Year__and_Month.csv")

str(df_csv)

## If you don't have readr installed yet, uncomment and run the line below
#install.packages("readr")
library(readr)
df_csv <- read_csv("data/Admissions_to_DMHAS_Addiction_Treatment_by_Town__Year__and_Month.csv")

# Pass the write_csv() function the name of the dataframe and what you want to call the file
write_csv(df_csv, "transformed_data.csv")

# Pass the write_csv() function the name of the dataframe and what you want to call the file

write_csv(df_csv, "data/transformed_data.csv")

# This replaces the NAs with blanks
                                                                                                                                        
write_csv(df_csv, "data/transformed_data.csv", na="")