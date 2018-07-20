
#install.packages("jsonlite")
library(jsonlite)
```


json_url <-"http://sbgi.net/resources/assets/sbgi/MetaverseStationData.json"

## If the url above doesn't exist anymore uncomment the line below and run it
# json_url <- "data/MetaverseStationData.json"

stations <- fromJSON(json_url)

str(stations)

View(stations)

include_graphics("images/json_example.png")
