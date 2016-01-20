# prepare workspace by loading common URLs as R objects into the global environment
# or save these, should they change.

Bechdel_Workspace <- function(mode="load"){
  if(mode == "load"){
    
    # Loading URLs
    load("bech.static", .GlobalEnv)
    
    # Loading the index as well
    BTC_index <- read.csv("BechInd.csv")
    
  } else {
    
    # A vector containg the URLs. Modify as needed.
    
    urls <- c("BTC_api_doc",
              "BTC_all",
              "BTC_byImdbId",
              "IMDB_ftpmirror")
    
    if(!file.exists("bech.static")){
      file.create("bech.static")
    }
    save(list = urls, file = "bech.static", ascii = T)
  }
}