complete <-function(directory,id=1:322){
    df<- data.frame()
    for(i in id){
     obs<-read.csv(paste(directory,sprintf("%03d.csv",i),sep = "/")) 
     df<- rbind(df,c(i,sum(complete.cases(obs[c('sulfate','nitrate')]))
))
    }
    names(df)<-c('id','nobs')
    df
}