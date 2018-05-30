# The objectoive of this task is to visualize the air quality using the given dataset through Scatter Plots
# Details of the dataset - https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/airquality.html

#install.packages("ggplot2")
#install.packages("gcookbook")

library("ggplot2")

# Set working location to the file directory below
aqdata <- read.csv("airquality_3months.csv")
aqdata

# Plot 1  - Understanding the Ozone level for any particular day of a month 
ggplot(data = aqdata) + geom_point(mapping = aes(x = Day, y = Ozone, size = 6))

# Plot 2 - Ozone levels based on the Wind and Temperature values reperesented in the form of colour variation
# This plot can be visualized in three different ways as follows
# All the three plots below give the same inference on Ozone level with respect to Wind and Temperature
# However, the #3 plot makes it easier to visualize the Ozone levels compared to other two plots
# as we can easily get the values for Wind and temp for any given Ozone level from the graph.
# whereas for the other two plots it is tedious to get the value of one of the independent variables(Wind or Temp) 
# from the legends and other from the x-axis of the graph for any givenn ozone value plotted in the y-axis.

# 1
ggplot(data = aqdata) + geom_point(mapping = aes(x = Wind, y = Ozone, colour = Temp, size = 6))
# 2
ggplot(data = aqdata) + geom_point(mapping = aes(x = Temp, y = Ozone, colour = Wind, size = 6))
# 3
ggplot(data = aqdata) + geom_point(mapping = aes(x = Wind, y = Temp, colour = Ozone, size = 6))

# Plot 3 - Daily value of Ozone level per month(May, June, July) represented by different shape and colour
ggplot(data = aqdata) + geom_point(mapping = aes(x = Day, y = Ozone, shape = Month, colour = Month, size = 6))

