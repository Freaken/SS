# Opgave 8
avit <- read.table("avit.txt", header=TRUE) # Indlæs datasættet

# Opgave 9
avitM <- subset(avit, sex==1)$avit # Udtag mændenes avit-indtag
length(avitM) # Tæl mændene
logavitM <- log(avitM)

# Opgave 10
hist(avitM) # Histogram for avitM
qqnorm(avitM) # QQ-plot for avitM
hist(logavitM) # Histogram for logavitM
qqnorm(avitM) # QQ-plot for logavitM

# Opgave 11
mean(logavitM) # Gennemsnittet af logavitM
var(logavitM) # Stikprøvevariansen af logavitM
sd(logavitM) # Stikprøvespredningen af ligavitM

# Opgave 12
hist(logavitM, prob=T, nclass=25)
f = function(x) dnorm(x, mean(logavitM), sd(logavitM))
plot(f, 0,9, add=T)

lnorm = function(y, mu, sigma) 1/(y*sqrt(2*pi*sigma^2)) * exp(-((log(y) - mu)^2) / (2*sigma^2))
hist(avitM, prob=T, nclass=25)
g = function(x) lnorm(x, mean(logavitM), sd(logavitM))
plot(g, 0, 8000, add=T)
