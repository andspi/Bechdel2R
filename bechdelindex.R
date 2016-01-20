# Script to create index of bechdeltest.com for further API analyses

Bechdeltest_index_to_DF <- function(){

  # load packages
  require(httr)
  require(jsonlite)
  
  #request data
  bech_index_resp <- GET("http://bechdeltest.com/api/v1/getAllMovieIds")
  
  # extract to data frame
  bech_index_DF <- fromJSON(content(bech_index_resp, as="text"))
  head(bech_index_DF)
  
  # write to local csv
  write.csv(bech_index_DF, file="BechInd.csv", row.names = F)
  
  
}