# read.table(file,  header=logical_value, sep="delimiter")
df1 <- read.table("data/Employee_Payroll_Pipe.txt", header=TRUE, sep="|")


View(df1)


# a \t indicates a tab (and a \n indicates a line break, like pressing enter in a document)
df2 <- read.table("data/Employee_Payroll_Tab.txt",  header=TRUE, sep="\t")


View(df2)


include_graphics("images/df1_success.png")


## If you don't have readr installed yet, uncomment and run the line below
# install.packages("readr")
library(readr)
df1 <- read_delim("data/Employee_Payroll_Pipe.txt", delim="|")
df1

df2 <- read_tsv("data/Employee_Payroll_Tab.txt")
df2

read_fwf(file, col_positions, col_types = NULL, locale = default_locale(),
         na = c("", "NA"), comment = "", trim_ws = TRUE, skip = 0,
         n_max = Inf, guess_max = min(n_max, 1000), progress = show_progress())



data_location <- "data/fixed_width_example.txt"

fixed_example <- read_fwf(data_location, skip=9, fwf_widths(c(8, 2, 12, 12, 29, 3,6, 9, 5, 18, 20, 8), c("entry", "per", "post_date", "gl_account", "description", "source", "cflow", "ref", "post", "debit", "credit", "alloc")))

head(fixed_example)
