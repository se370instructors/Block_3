#---SE370 AY22-3 - Lesson 24
#By: LTC David Beskow
#March 2023
# Edited by LTC Beskow March 2023

# Plotting the Titanic Dataset with PLOTLY

# Read in the data

# Read in the data

library(dplyr)
library(plotly)
library(readr)

df = read_csv('titanic.csv')
head(df)

# Basic Histogram in Plotly


# Overlapping Histogram in Plotly


###################### Scatter Plot ####################################

# Basic scatter plot


# Basic scatter plot by Gender


# Change the pallette
# Basic scatter plot by Gender


#######################Box Plots ####################################

# Basic Boxplot



#####################  Bar Plot ######################################


# Basic Barplot



# Stacked Barplot





################### Network Visualization ####################################
devtools::install_github('iankloo/sigmaNet')
library(sigmaNet)
library(igraph)

data(lesMis)

clust <- cluster_edge_betweenness(lesMis)$membership
V(lesMis)$group <- clust

layout <- layout_with_fr(lesMis)

sig <- sigmaFromIgraph(lesMis, layout = layout) %>%
  addNodeLabels(labelAttr = 'label') %>%
  addEdgeSize(sizeAttr = 'value', minSize = .1, maxSize = 2) %>%
  addNodeSize(sizeMetric = 'degree', minSize = 2, maxSize = 8) %>%
  addNodeColors(colorAttr = 'group', colorPal = 'Set1')
sig



############# sigmaNet on Twitter data

tweet_edgelist <- read_csv('tweets.csv.gz')

g <- graph_from_data_frame(tweet_edgelist, directed=FALSE)

# Get biggest connected component
components <- igraph::clusters(g, mode="weak")
biggest_cluster_id <- which.max(components$csize)
vert_ids <- V(g)[components$membership == biggest_cluster_id]
g <- igraph::induced_subgraph(g, vert_ids)

# Cluster to get colors
clust <- cluster_louvain(g)$membership
V(g)$group <- clust

# Node size based on degree
V(g)$degree <- degree(g)

layout <- layout_with_fr(g)

sig <- sigmaFromIgraph(g, layout = layout) %>%
  addNodeSize(sizeMetric = 'degree', minSize = 2, maxSize = 8) %>%
  addNodeColors(colorAttr = 'group', colorPal = 'Paired')
sig
