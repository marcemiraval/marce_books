library(dplyr)
library(stringr)
library(ggplot2)
library(maps)

options(scipen = 999) ## To disable scientific notation

world <- map_data("world")
head(world)

world <- map_data("world")
worldplot <- ggplot() +
  geom_polygon(data = world, 
               fill = "#bdbdbd",
               color = "white",
               linewidth = 0.05, 
               aes(x=long, y = lat, group = group)) + 
  coord_fixed(1.3) + 
  theme_void() +
  theme(panel.background = element_rect(fill = "#f0f0f0"))
worldplot
