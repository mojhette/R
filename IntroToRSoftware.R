
#The R-code I used in the video
vec<-c(1,2,3,4,5,6,7)
mean(vec)
var(vec)
sd(vec)

#set up your "working directory"
  #(the folder you downloaded "nhisdata.txt" into
NHIS<-read.csv("nhisdata.txt",header=T)

str(NHIS)
summary(NHIS)
fix(NHIS)

?read.csv
help(read.csv)

library()