###Load data
gsd<-read.csv("C:/Users/OLAJIDE/Documents/Rvater/SearchData.csv",header=TRUE)
###View variables
pairs(gsd[c(2:4,8:9)])
###Graph using "pairs"
pairs(gsd[c(2:4,8:9)],
      panel = panel.smooth,
      main="Scatterplot Matrix for SearchData using pairs function",
      pch=16,
      col="coral")
###Graph using "scatterplotMatrix" from "car"
require(car)
scatterplotMatrix(~nba+nfl+fifa+degree+age,
                  data = gsd,
                  col=rgb(.54, .0, .0),
                  main="Scatterplot Matrix for SearchData using\"car\"Package")
