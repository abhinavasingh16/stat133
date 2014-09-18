# Please use the family.csv dataset to answer the following questions. Write
# your code so that it works for an arbitrary dataset of the same format as
# family.csv 

# load in the data and save it as a data frame called family.
#load works for rda file but readcsv is for csv files
family <- read.csv("Desktop/stat133/classwork/section2/family.csv");


# Use the summary function to examine the dataset.
names(family)
head(family)
summary(family)


# How many family members are there in the dataset?
n.family <- length(family$fnames)


# How many males? How many females?
n.males <- length(which(family$fgender == "m"))
n.females <- sum(family$fgender == "m");


# What are the female names? The male names?
f.names <- family$fnames[family$fgender == "f"]
m.names <- family$fnames[family$fgender == "m"]


# What is the average age of individuals whose age is recorded?
avg.age <- mean(family$fage, na.rm=T)


# What is the average age of individuals who are not named Tom, Ann, or Joe?
avg.age.subset <- your code here

# Create the vector fratio that gives the height to weight ratio for each family
# member. Add this vector to the data frame <family>
fratio <- family$fheight / family$fweight
family <- data.frame(family,fratio)


# How many individuals are taller than the average height of the family? How
# many are shorter?
n.tall <- sum(family$fheight > mean(family$fheight))
# n.short <- your code here


# How many individuals are more than 1 sd above the average height?
# n.really.tall <- your code here



#generate a plot 

color2 = c("blue","red");
col_gender = color2[as.numeric(fgender)]
plot(fweight,fheight,xlab="weight",ylab="height", main = "Family height v weight", col = col_gender, pch = 20)
legend("topleft",legend = c("males","females"), col = col2, pch = 20);

#c%in%d checks if c is in d
family[family$fnames %in% c("Dan","Ann","Tim","Art")];

