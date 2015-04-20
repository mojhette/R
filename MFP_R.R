MFP<-read.csv("/JLA/Sauvegarde/Dropbox/Santé/Hierarchie.csv",header=T,sep=";")
str(MFP)
summary(MFP)

ls()
dir()
MFP[,7]
MFP$Sum_Calories
attach(MFP)
Sum_Calories

moy = mean(Sum_Calories)
max(Sum_Calories)
min(Sum_Calories)
sum(Sum_Calories)
var(Sum_Calories)
StdDev = sd(Sum_Calories)

x = Sum_Calories
n <- length(x)
n
sort(x)
y=1/sqrt(2*pi)*exp(-x^2/2)
y=pnorm(x,sd=1)
y
plot(x,y,type="l",lwd=1,col="red")

x1=seq(-4,4,length=200)
y1=1/sqrt(2*pi)*exp(-x1^2/2)
plot(x1,y1,type="l",lwd=2,col="red")

y <- dnorm(x,mean=moy,sd=StdDev)
sort(y)
plot(x,y)

g = MFP$Sum_Calories
hist(g)

g = MFP$Sum_Calories
    m<-mean(g)
    std<-sqrt(var(g))
    hist(g, density=20, breaks=20, prob=TRUE, 
         xlab="x-variable", ylim=c(0, 0.0025), 
         main="normal curve over histogram")
    curve(dnorm(x, mean=m, sd=std), 
          col="darkblue", lwd=2, add=TRUE, yaxt="n")