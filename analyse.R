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



