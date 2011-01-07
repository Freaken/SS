# Opgave 8
avit <- read.table("avit.txt", header=TRUE) # Indlæs datasættet

# Opgave 9
avitM <- subset(avit, sex==1)$avit # Udtag mændenes avit-indtag
length(avitM) # Tæl mændene
logavitM <- log(avitM)

# Opgave 10
pdf("graphs/analyse_1.pdf")
hist(avitM) # Histogram for avitM
dev.off()

pdf("graphs/analyse_2.pdf")
qqnorm(avitM) # QQ-plot for avitM
dev.off()

pdf("graphs/analyse_3.pdf")
hist(logavitM) # Histogram for logavitM
dev.off()

pdf("graphs/analyse_4.pdf")
qqnorm(logavitM) # QQ-plot for logavitM
dev.off()

# Opgave 11
mean(logavitM) # Gennemsnittet af logavitM
var(logavitM) # Stikprøvevariansen af logavitM
sd(logavitM) # Stikprøvespredningen af ligavitM

# Opgave 12
pdf("graphs/analyse_5.pdf")
hist(logavitM, prob=T, nclass=25)
f = function(x) dnorm(x, mean(logavitM), sd(logavitM))
plot(f, 0,9, add=T)
dev.off()

lnorm = function(y, mu, sigma) 1/(y*sqrt(2*pi*sigma^2)) * exp(-((log(y) - mu)^2) / (2*sigma^2))
pdf("graphs/analyse_6.pdf")
hist(avitM, prob=T, nclass=25)
g = function(x) lnorm(x, mean(logavitM), sd(logavitM))
plot(g, 0, 8000, add=T)
dev.off()
