#---SE370 AY22-3 - Lesson 22
#By: LTC David Beskow
#March 2023
# Edited by LTC Beskow March 2023

# Plotting the Titanic Dataset with GGPLOT2

# Read in the data

library(dplyr)
library(ggplot2)
library(readr)

df = read_csv('titanic.csv')
head(df)

# Look at the structure of the data


#  Check if you any NA's in your data



# Create a histogram of the age of passengers


# Create a histogram of the age of passengers separated by Gender


# What if you don't like those colors????


# What if we want to change the position of the legend??


 

# Add a "rug"



# Make basic boxplot of Fare



# Now separate it by Passenger Class


# This didn't work because we didn't indicate that Pclass is a factor


# Now we can add a fill color


# and remove the legend


# Change the palette, add a log10 transformation and dollar symbols



# Barplots
# Create a barplot of titanic Passenger Class



# What if we wanted to change the order



# How about a stacked barplot


# Now add labels



# What if we have count data

# Finally...how do you save the image as a png?


#or a pdf?




