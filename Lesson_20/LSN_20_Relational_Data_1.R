## SE370 AY 23-2
## Lesson 20: Relational Data I - Keys and Joins

library(dplyr)
library(readr)
library(tidyr)

#---Relational data: Multiple tables that are interconnected or related, 
#but are stored in separate data files. Understanding the relations between data 
#sets is just as important as understanding indiviual data

# There are 3 families of verbs that help you work with relational data:
# 1. Mutating Joins: Add new variables to one dataframe from matching observations in another
# 2. Filtering Joins: Filter observations from one data frame based on whether or 
#  not they match an observation on the other table
# 3. Set Operations: Treat observations like they are set elements.

#---KEYS
# Keys are variables used to connect each pair of tables. It is a variable that 
# uniquely identifies an observation.

# A PRIMARY KEY identifies an observation on its own table.
# A FOREIGN KEY identifies an observation on another table.

#---BASIC JOINS
# Consider two dataframes -- x and y

x <- data.frame(key = c(1:3), val_x = c('x1','x2','x3'))
y <- data.frame(key = c(1,2,4,2), val_y = c('y1','y2','y3','y4'))

x
y

#--MUTATING JOINS
# see venn diagram ('joins_venn_diagram.png')

# inner_join(): return all rows from x where there are matching values in y, 
# and all columns from x and y. If there are multiple matches between x and y, 
# all combination of the matches are returned.
# BLUF: Where there is no match, you lose data





# left_join(): return all rows from x, and all columns from x and y. Rows in x 
# with no match in y will have NA values in the new columns. If there are 
# multiple matches between x and y, all combinations of the matches are returned.
# BLUF: Preserves all x rows, even if y columns will be NA





# right_join(): return all rows from y, and all columns from x and y. Rows in y 
# with no match in x will have NA values in the new columns. If there are 
# multiple matches between x and y, all combinations of the matches are returned.
# BLUF: Preserves all y rows, even if x columns will be NA




# full_join(): return all rows and all columns from both x and y. 
# Where there are not matching values, returns NA for the one missing.
# BLUF: Perserves all existing data, but may produce a lot of NA values!





#--FILTERING JOINS: filter rows from x 
# based on the presence or absence of matches in y

# semi_join(): return all rows from x where there are matching values in y, 
# keeping just columns from x. A semi join differs from an inner join because 
# an inner join will return one row of x for each matching row of y, where a 
# semi join will never duplicate rows of x.




# anti_join():  return all rows from x without a match in y




#--NESTING JOINS: create a list column of data.frames

# nest_join():




# Let's do some joins...

#---1) Read in the Lego Data.  Explore each of these data frames.  

sets <- read_csv('Lego_dataset/sets.csv')
head(sets)

parts <- read_csv('Lego_dataset/parts.csv')
head(parts)

themes <- read_csv('Lego_dataset/themes.csv')
head(themes)

inventories <- read_csv('Lego_dataset/inventories.csv')
head(inventories)

inventory_sets <- read_csv('Lego_dataset/inventory_sets.csv')
head(inventory_sets)

part_categories <- read_csv('Lego_dataset/part_categories.csv')
head(part_categories)

inventory_parts <- read_csv('Lego_dataset/inventory_parts.csv')
head(inventory_parts)

colors <- read_csv('Lego_dataset/colors.csv')
head(colors)

# Take a look at the schema
lego_schema <- load.image("Lego_dataset/downloads_schema.png")
plot(lego_schema)


# Answer the following 2 questions: 

# ---1) Which Lego Set (by set name) has the most colors (don't count spare parts)?  
# ---2) What are the colors in that set?


# First, confirm that every part in 'sets' is inventoried in inventory_parts:

sum(sets$num_parts)  # sum every part in every set

# sum inventory after removing spare parts
inventory_parts %>% filter(!is_spare) %>% summarize(total = sum(quantity))


# Change column names in color, select only relevant columns


# Left join colors to inventory parts


# Count the number of colors per set


# Now let's find the top 20 sets with the most colors











