#Kaiser baby analysis: GSI is Johnny Hong (Wed 10-12 @ 342 Evans and 5:10-7:10pm in 446 Evans).

load("Desktop/stat133/classwork/lecture5/KaiserBabies.rda")

is.matrix(infants)
is.data.frame(infants)
names(infants)

dim(infants)

#head gives you the first 5 lines
head(infants)

#first param gives you rows, columns
infants[1:5 , 1:6]

#these two commands give you a vector of all of the possible bwts (pulls out a column called bwt)
infants$bwt

infants[,"bwt"]

#plots the distribution of birthweights and their corresponding frequencies a historgram lol.
hist(infants$bwt)

#now the problem is that we want to customize the bins and relabel the axes. 
hist(infants$bwt, freq = FALSE, xlab = "Birth Weight COntrol", main="Male Babies, Oakland")

#generate a density plot. Density makes a density matrix and R plots it! N = number of observations and bandwidth conttrolls smoothness.
plot(density(infants$bwt, bw=1))
boxplot(infants$bwt)


#now lets look at parity. Use table to see a table of the vectors and names. 
table(infants$parity)

#bar plot visualizes the frequency 
barplot(table(infants$parity), col = "green")



#case II
load("Desktop/stat133/classwork/lecture5/videogame.rda")
objects() 

names(video)
dim(video)
table(video$grade)
table(video$grade,video$sex)
video[1:5,1:6]
table(video$sex)

#we want to normalize female and male data because we have mor emales than females. 

#we want to look at housing data
load("Desktop/stat133/classwork/lecture5/SFHousing.rda")
boxplot(housing$price ~ housing$city, las=2)

#look at family data

