sim <- exp(rnorm(5000,5,0.5))
hist(sim,prob=T,nclass=25)
f <- function(y,mu,sigma) exp(rnorm(y,mu,sigma))
yval <- seq(0,1000,1)
fval <- f(yval,5,0.5)
lines(yval,fval) #Why doesn't this go into the diagram?
results <- c(mean(sim)) #missing something...
