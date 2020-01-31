######
#functions
#######

# loads all csv 
load_all_csv <- function(PATH){
  wd1 <- getwd()
  setwd(paste0(wd1,"/",PATH))
  docs <- lapply(dir(), FUN = function(x){
    df <- read.csv(x, fileEncoding = "UTF-8")}
    )
  setwd(wd1)
  docs
}

# make a histogram for gamma
histo_func <- function(x){
  y <- x[[1]]
  z<- y[,"gamma"]
  hist(z)
  }
