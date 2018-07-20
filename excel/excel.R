
## If you don't have readxl installed, uncomment the line below and run it 
#install.packages("readxl")
library(readxl)

df_xl <- read_excel("data/StatisticsSummary.xls", sheet=1)

View(df_xl)

include_graphics("images/excel_imported.png")

df_xl <- read_excel("data/StatisticsSummary.xls", sheet=1, skip=2)

View(df_xl)

# the colnames() function lists the column names of the dataframe
colnames(df_xl)

head(df_xl$Other Cases)

head(df_xl$`Other Cases`)

colnames(df_xl) <- make.names(colnames(df_xl))

View(df_xl)

colnames(df_xl)

# Don't run this, I just want to show you the process
colnames(df_xl)[colnames(df_xl) == 'Fiscal.Year......7.1.6.30'] <- 'Year'

## If you don't have dplyr installed yet, uncomment the line below and run it
# install.packages("dplyr")

library(dplyr)
df_xl <- rename(df_xl, Year=Fiscal.Year......7.1.6.30)

colnames(df_xl)

df_xl <- subset(df_xl, !is.na(Year))

## If you don't have dplyr installed yet, uncomment the line below and run it
# install.packages("dplyr")
library(dplyr)
df_xl <- filter(df_xl, !is.na(Year))