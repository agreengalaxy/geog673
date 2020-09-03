#call CO2 dataset
co2

#create CO2 data variable
co2_data <- co2
co2_data

#What class is this data?
class(co2_data)

#summary of data
summary(co2_data)

#How long is this dataset?
length(co2_data)

#plot
plot(x = co2, ylab = "Atmospheric concentration of CO2 (ppm)", main = "CO2 Dataset")

#cars data
data('mtcars')
head(mtcars)

#What class is mtcars?
class(mtcars)

#dimensions
dim(mtcars)

#number of rows
nrow(mtcars)

#number of columns
ncol(mtcars)

#column names
colnames(mtcars)

#row names
rownames(mtcars)

#isolate mpg
mtcars["mpg"]

#extract mpg as vector
mtcars$mpg

#summary by variable
summary(mtcars)

#index first five rows 
mtcars[1:5,]

#index first five rows and just the first column too
mtcars[1:5,1]

#plot mpg for first five cars
barplot(height = mtcars$mpg[1:5], names.arg = rownames(mtcars)[1:5])
