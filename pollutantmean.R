pollutantmean <-function(directory,pollutant,id=1:322){
    paths <- paste(directory,sprintf("%03d.csv",id),sep = '/')
    dfs <- lapply(paths, read.csv)
    df<-do.call(rbind,dfs)
    mean(df[[pollutant]],na.rm = T)
}


