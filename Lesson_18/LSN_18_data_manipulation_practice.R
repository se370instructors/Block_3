## SE370 AY22-2
## Lesson 18 In-Class activity

library(dplyr)
library(tidyr)
library(readr)

# Let's start by demonstrating separate and unite

# Create a sample data frame
df <- data.frame(id = 1:5,
                 full_name = c("John Smith", "Jane Doe", "Bob Johnson", "Alice Kim", "Peter Lee"),
                 age = c(25, 32, 47, 19, 56),
                 gender = c("M", "F", "M", "F", "M"))

# Split the full_name column into first_name and last_name columns


# Combine the first_name and last_name columns into a new full_name column



# Now you do the same with IP addresses.  Split the IP addresses into the respective 4 octets

df <- data.frame(id = 1:3,ip_address = c("192.168.1.1", "10.0.0.2", "172.16.0.3"))

# Split the ip_address column into four separate columns.  Use sep = '\\.'


# Combine the four IP address components into a new ip_address column



# Understand dplyr 'grouping'

apft = data.frame(regiment=  c(1,2,1,1,1,2,2,1,2,1,2,1),
                  company = c('A','B','C','A','A','C','D','B','C','D','B','A'),
                  gender = c('M','M','M','F','M','F','F','M','F','M','M','M'),
                  pu = c(34,56,78,85,34,54,43,56,87,27,55,67),
                  su = c(65,77,45,88,96,45,55,66,84,35,66,54),
                  run = c('12:15','15:45','10:50','13:15','14:54','15:49','16:30',
                          '13:56','12:54','14:16','14:54','13:16'))

# Group the data by gender


# Compute the mean pushup score by gender


# Compute the mean pushup score by company and regiment


# Compute the mean pushup score and count by company and regiment


##################### Application #########################################

# Read in the data


#---Which soccer teams have the highest concentration of talent?  
# Create a new dataframe called team_scores. It should do the following:
# 1. Group by club and summarise by summing overall score (which is the player's ranking)
# 2. Filtering out any blanks for the club
# 3. Display only the 25 highest totals
# 4. Arrange in descending order



#---Can a player's size predict how aggressive he is?
# For this question, we want to create a plot! 
# Unfortunately, our height is current a character value and we need to make it
# a continuous numeric value for plotting purposes.

# To approach this, do the following:
# 1. Convert the player height from a character to a numeric argument. This is a 
# multi-step process! Think: drop NAs, separate feet & inches, convert to numeric, covert to 
# either pure inches or pure feet, then unit the column back together.
# 2. Once that is complete (phew!), group by height and find the mean Aggression 
# score at each height



# Plot using the plot() function



# Aggression is considered the player's chances of coming out on top 
# in a 50/50 challenge with an opponent. Based on this -- is there a certain
# height or height range where players score highest in this metric?




#--- Are older players more composed? What age(s) score highest on this?
# Follow a similar approach to the last question to answer this!
# However, you won't need to convert data types :) 



# plot




#--- Which 25 teams have the most powerful players?
# The power metrics are Shot Power, Jumping, Stamina, Strength, and Long Shots
# Think through how you might create a metric that allows you to compare 
# all these values between teams!
# HINT: It may be valueable to summarise by MORE THAN ONE metric, and also beneficial
# to get a count of players on each team.


#--- YOUR TURN
# Consider the goalkeeper data. (Columns GK Diving to GK Reflexes)
# Create a dataframe that provides insight on goalkeepers. 
# You could find the best goalkeepers, see how goalkeepers match up with their 
# team's offensive players, check on age of goalkeepers, etc.
