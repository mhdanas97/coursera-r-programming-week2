corr <- function(directory,threshold=0){
    source('complete.R')
    cases<-complete(directory)
    ids<-cases[cases$nobs>threshold,'id']
    res<-c()
    for(id in ids){
      df<-read.csv(paste(directory,sprintf("%03d.csv",id),sep = '/'))
      res<-c(res,cor(df$sulfate,df$nitrate,use = "co"))
    }
    res
}