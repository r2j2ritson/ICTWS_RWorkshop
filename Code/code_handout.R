### Intro
mean(c(1,2,3))

sample(1:10,1)

?sample
sample
mean
browseVignettes()
#
sample(1:10,'F')

sessionInfo()
### Creating objects in R
3+5
12/7
12*5

weight_kg <- 5
weight_kg

x <- 3
x

x = 5
x
mean(x = 1:10)
sample(x=1:10, size=1)
# <- <- <- <- <- <- <- <- <- <- <- <- <- <- <- <- 
#  alt '-'
#<- <- <- <- <- <- <- <- <- <- <- <- <- <- <- <- <-
# comment out

##############################3
## Hey heres the beginning
################################

weight_kg <- 5
weight_kg

current_temperature
subject_id
x2 <- 3

Weight_kg

if <- 2
else <- 3
for <- 4
while 
next

this.that <- 5
this.that  

thisThat <- 4

CurrentTemperature
currentTemperature
current_temperature

weight_kg

# this that

weight_kg <- 7*20

weight_kg
(weight_kg <- 7*20)
print(weight_kg)

#
print('im running now')

print('im finding the mean')
data <- 1:10
print('heres the mean')
(mean(data))


#
install.packages('tidyverse')
#
weight_kg <- 5
weight_kg
weight_kg * 20

weight_lb <- weight_kg*2.2   # what is the weight kilograms

weight_lb   # what is my new value

weight_kg <- 100    # 

weight_lb
# change

#







### Challenge
##
## What are the values after each statement in the following?
##
mass <- 47.5            # mass?
mass
age  <- 122             # age?
age
mass * 2.0
mass*100

mass_corrected <- mass * 2.0      # mass?
mass_corrected

age  <- age - 20        # age?
age

mass_index <- mass/age  # mass_index?

sd
weight_kg <- sqrt(10)
weight_kg

round(3.14159)
args(round)

round(3.14159, digits=2)
round(digits = 2, 3.14159)

round(x = 3.14159, digits = 2)
round(3.14159,2)



#












### Vectors and data types
my_model(data= 1, modle_type='complicated')

weight_g <- c(50,60,70)
tt <- c('this','what','that',"stuff")
tt
weight_g*1000

my_models <- c('bayesian','random_forest')
my_models

animals <- c('mouse',"rat",'dog')
animals

x <- '1'
x <- "1"
x <- "matt's dog"
x
x <- 'Abe lincoln said : "im famous"'
x

x*10

length(animals)
animals

animals <-c(1,'dog')
animals

str(weight_g)
str(animals)

class(weight_g)
class(animals)

c()
weight_g
weight_g <- c(weight_g,90,100,110,120)
weight_g <- c(190,1100,weight_g,10,20)
weight_g

animals <- c('bird',animals)
animals

# Data types
10.1 # numeric/double
"rat" # character
FALSE # logical
TRUE

1 #integer

typeof(animals)
#

















## ## We’ve seen that atomic vectors can be of type character, numeric, integer, and
## ## logical. But what happens if we try to mix these types in a single
## ## vector?
## 
## ## What will happen in each of these examples? (hint: use `class()` to
## ## check the data type of your object)
num_char <- c(1, 2, 3, "a")
typeof(num_char)

num_logical <- c(1, 2, 3, TRUE)
typeof(num_logical)

char_logical <- c("a", "b", "c", TRUE)
typeof(char_logical)


tricky <- c(1, 2, 3, "4")
typeof(tricky)



## 
## ## Why do you think it happens?
## 
## 
## ## How many values in `combined_logical` are `"TRUE"` (as a character) in the
## ## following example:
## combined_logical <- c(num_logical, char_logical)
## 
## ## You've probably noticed that objects of different types get
## ## converted into a single, shared type within a vector. In R, we call
## ## converting objects from one class into another class
## ## _coercion_. These conversions happen according to a hierarchy,
## ## whereby some types get preferentially coerced into other types. Can
## ## you draw a diagram that represents the hierarchy of how these data
## ## types are coerced?


animals <- c('mouse','rat','dog','cat')
animals[c(2,3)]

animals[2,3]
c(2,3)

more_animals <- animals[c(1,2,1,3)]
more_animals

weight_g <- c(21,34,39,54,55)
weight_g[c(TRUE,FALSE,FALSE,TRUE,TRUE)]

#> 
 # <
#  >=
 # <=
  
weight_g[weight_g > 50]

# I want everything in the variable weight_g that isover thirty grams 
# and less fifty grams. So between 30 and 50
weight_g[weight_g > 30 & weight_g<50]

weight_g[weight_g <=30 | weight_g == 55]

animals <- c('mouse','rat','dog','cat','cat')
animals[animals=='cat']

sum(animals=='cat')
length(animals[animals=='cat'])

all_animals <- c('rat','cat','dog','duck','goat','bird','fish')
animals

animals %in% all_animals
animals[animals%in%all_animals]

'four'>'five'
'dog'>'cat'
'1'>'1'

# 
#










### Challenge (optional)
##
## * Can you figure out why `"four" > "five"` returns `TRUE`?





heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)

# 1.
heights_no_na <- heights[!is.na(heights)]
# or
heights_no_na <- na.omit(heights)
# or
heights_no_na <- heights[complete.cases(heights)]

# 2.
median(heights, na.rm = TRUE)

# 3.
heights_above_67 <- heights_no_na[heights_no_na > 67]
length(heights_above_67)

## ### Challenge
## 1. Using this vector of heights in inches, create a new vector with the NAs removed.
##
##    heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
##
## 2. Use the function `median()` to calculate the median of the `heights` vector.
##
## 3. Use R to figure out how many people in the set are taller than 67 inches.
### Loading the survey data

RUN THIS!
download.file(url = "https://ndownloader.figshare.com/files/2292169",
              destfile = "data_raw/portal_data_joined.csv")

download.file(url = "https://ndownloader.figshare.com/file/2292169",destfile = "data_raw/portal_data_joined.csv")

read_csv()

library(tidyverse)
surveys <- read_csv('data_raw/portal_data_joined.csv')

head(surveys)

view(surveys)

str(surveys)
#











## Challenge
## Based on the output of `str(surveys)`, can you answer the following questions?
##
## * What is the class of the object `surveys`?
## * How many rows and how many columns are in this object?

str(surveys)
class(surveys)

## Indexing and subsetting data frames

surveys[1,2]
surveys[1,6]

my_variable <- surveys[,1]

surveys[,]

surveys[c(1,2,3),c(1,2)]

2:10

surveys[1:20,]

surveys[,-1]

#





nrow() # shows the number of rows in a data frame
ncol() # shows the number columns in a data frame
### Challenges:
###
### 1. Create a `data.frame` (`surveys_200`) containing only the
###    data in row 200 of the `surveys` dataset.
###

surveys_200 <- surveys[200,]
nrow(surveys)
nrow(surveys_200)
### 2. Notice how `nrow()` gave you the number of rows in a `data.frame`?
###
###      * Use that number to pull out just that last row in the data frame
surveys[nrow(surveys),]
head(surveys)
tail(surveys)
###      * Compare that with what you see as the last row using `tail()` to make
###        sure it's meeting expectations.
###      * Pull out that last row using `nrow()` instead of the row number
###      * Create a new data frame object (`surveys_last`) from that last row
survey_last <- surveys[nrow(surveys),]
### 3. Use `nrow()` to extract the row that is in the middle of the
###    data frame. Store the content of this row in an object named
###    `surveys_middle`.
###
surveys[nrow(surveys)/2,]
### 4. Combine `nrow()` with the `-` notation above to reproduce the behavior of
###    `head(surveys)`, keeping just the first through 6th rows of the surveys
###    dataset.


### Factors
factor(c('this','that'),levels=c(1,2))
c('a','b','c')

sex <- factor(c('male','female','female','male'))



sex <- factor(c("male", "female", "female", "male"),levels=c('male','female'))
sex

as.character(sex)
as.numeric(c(T,F,FALSE))

TRUE <- 'this'


### Challenges:
###
### 1. Change the columns `taxa` and `genus` in the `surveys` data frame into a 
###    factor.
###
### 2. Using the functions you learned before, can you find out...
###
###      * How many rabbits were observed?
###      * How many different genera are in the `genus` column?




year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)               # Wrong! And there is no warning...
as.numeric(as.character(year_fct)) # Works...
as.numeric(levels(year_fct))[year_fct]    # The recommended way.

## bar plot of the number of females and males captured during the experiment:
plot(surveys$sex)







## Challenges
##
## * Rename "F" and "M" to "female" and "male" respectively.
## * Now that we have renamed the factor level to "undetermined", can you recreate the
##   barplot such that "undetermined" is first (before "female")

library(lubridate)
install.packages('lubridate')
surveys
my_date <- ymd('2023/02/14')
my_date
str(my_date)

paste('this','that','there',sep='-')
surveys[,1]

surveys$month[1:5]
surveys[1:5,2]
my_date <- ymd(paste(surveys$year,surveys$month,surveys$day,sep='-'))
my_date[my_date>'2000-01-01',]

surveys$date <- ymd(paste(surveys$year,surveys$month,surveys$day,sep='-'))
surveys$new_date <- ymd(paste(surveys$year,surveys$month,surveys$day,sep='-'))
surveys$new_new_date <- ymd(as.character(surveys$date))
good_data <- surveys[!is.na(surveys$date),]
## ## Challenge:
## ##  There are a few mistakes in this hand-crafted `data.frame`,
## ##  can you spot and fix them? Don't hesitate to experiment!
## animal_data <- data.frame(
##       animal = c(dog, cat, sea cucumber, sea urchin),
##       feel = c("furry", "squishy", "spiny"),
##       weight = c(45, 8 1.1, 0.8)
##       )
library(dplyr)

surveys
select(surveys,plot_id,weight)

select(surveys, -plot_id,-weight)

filter(surveys,year==1995)
surveys$year==1995

#%in%
#%>% 

surveys2 <- select(surveys,plot_id,weight,year)
newoutput1 <- filter(surveys2,weight<5)

#ctrl +shift + m
select(surveys, plot_id,weight) %>% filter(weight<5,plot_id==3)

library(tidyverse)

surveys$new_new_date <- 'this'

mutate()

surveys_new <- surveys %>% mutate(weight_kg = weight/1000)

surveys %>% 
  filter(!is.na(weight)) %>% 
  mutate(weight_kg = weight/1000) %>% 
  head()
#
group_by()
summarize()

#
surveys %>% 
  group_by(sex) %>% 
  summarize(mean_weight = mean(weight,na.rm=T))


mean(surveys$weight,na.rm=T)
## ## Challenge:
## ##   Can you predict the class for each of the columns in the following
## ##   example?
## ##   Check your guesses using `str(country_climate)`:
## ##   * Are they what you expected? Why? why not?
## ##   * What would you need to change to ensure that each column had the
## ##     accurate data type?
## country_climate <- data.frame(country = c("Canada", "Panama", "South Africa", "Australia"),
##                                climate = c("cold", "hot", "temperate", "hot/temperate"),
##                                temperature = c(10, 30, 18, "15"),
##                                northern_hemisphere = c(TRUE, TRUE, FALSE, "FALSE"),
##                                has_kangaroo = c(FALSE, FALSE, FALSE, 1))
## ## Pipes Challenge:
## ##  Using pipes, subset the data to include animals collected
## ##  before 1995, and retain the columns `year`, `sex`, and `weight.`











## ## Mutate Challenge:
## ##  Create a new data frame from the `surveys` data that meets the following
## ##  criteria: contains only the `species_id` column and a new column called
## ##  `hindfoot_cm` containing the `hindfoot_length` values converted to centimeters.
## ##  In this `hindfoot_cm` column, there are no `NA`s and all values are less
## ##  than 3.
## 
## ##  Hint: think about how the commands should be ordered to produce this data frame!































## ## Count Challenges:
## ##  1. How many animals were caught in each `plot_type` surveyed?
## 
## ##  2. Use `group_by()` and `summarize()` to find the mean, min, and max
## ## hindfoot length for each species (using `species_id`). Also add the number of
## ## observations (hint: see `?n`).
## 
## ##  3. What was the heaviest animal measured in each year? Return the
## ##  columns `year`, `genus`, `species_id`, and `weight`.



















## ## Reshaping challenges
## 
## ## 1. Reshape the `surveys` data frame with `year` as columns, `plot_id` as rows, and the number of genera per plot as the values. You will need to summarize before reshaping, and use the function `n_distinct()` to get the number of unique genera within a particular chunk of data. It's a powerful function! See `?n_distinct` for more.
## 
## ## 2. Now take that data frame and `pivot_longer()` it, so each row is a unique `plot_id` by `year` combination.
## 
## ## 3. The `surveys` data set has two measurement columns: `hindfoot_length` and `weight`. This makes it difficult to do things like look at the relationship between mean values of each measurement per year in different plot types. Let's walk through a common solution for this type of problem. First, use `pivot_longer()` to create a dataset where we have a names column called `measurement` and a `value` column that takes on the value of either `hindfoot_length` or `weight`. *Hint*: You'll need to specify which columns will be part of the reshape.
## 
## ## 4. With this new data set, calculate the average of each `measurement` in each `year` for each different `plot_type`. Then `pivot_wider()` them into a data set with a column for `hindfoot_length` and `weight`. *Hint*: You only need to specify the names and values columns for `pivot_wider()`.





## ### Create the dataset for exporting:
## ##  Start by removing observations for which the `species_id`, `weight`,
## ##  `hindfoot_length`, or `sex` data are missing:
surveys_complete <- surveys %>%
    filter(species_id != "",        # remove missing species_id
           !is.na(weight),                 # remove missing weight
           !is.na(hindfoot_length),        # remove missing hindfoot_length
           sex != "")                      # remove missing sex

##  Now remove rare species in two steps. First, make a list of species which
##  appear at least 50 times in our dataset:
species_counts <- surveys_complete %>% 
  count(species_id) %>% 
  filter(n>50) %>% select(species_id)

##  Second, keep only those species:
surveys_complete <- surveys_complete %>%
    filter(species_id %in% species_counts$species_id)

write_csv(surveys_complete, file = 'data/surveys_complete.csv')
### Data Visualization with ggplot2
surveys_complete <- read_csv('data/surveys_complete.csv')
#

### ggplot

surveys_plot <- ggplot(data=surveys_complete,
                       mapping=aes(x=weight,y=hindfoot_length)) 

surveys_plot + geom_point(alpha=0.1,color="blue")

surveys_plot + geom_point(alpha=1, aes(color=species_id))

#Challenge: scatterplot of weight by species_id color plot type
ggplot(data = surveys_complete,
       mapping = aes(x=species_id,y=weight)) +
  geom_point(aes(color=plot_type))

#boxplot
ggplot(data=surveys_complete,aes(x=species_id,y=weight)) +
  geom_boxplot(alpha=0)+
  geom_jitter(alpha=0.3, color="tomato")

#violins
ggplot(data=surveys_complete,aes(x=species_id,y=weight)) +
  geom_violin()
#
## Timeseries
yearly_counts <- surveys_complete %>% count(year,genus)
ggplot(data=yearly_counts,aes(x=year,y=n, color=genus)) + 
  geom_line(linewidth=2) +
  labs(x="Year",y="Count",title="Counts of Genra by Year")

ggplot(data=yearly_counts,aes(x=year,y=n, color=genus)) + 
  geom_line(linewidth=2) +
  facet_wrap(genus~.)
#


### GIS
library(sf)

#Create a simple point feature
point1 <- st_point(c(1,3))
plot(point1,col='red',pch=16,cex=2,main="A simple point")
class(point1)

#Create simple polygon
poly1 <- st_polygon(list(rbind(c(0,0),c(5,0),c(5,5),c(0,5),c(0,0))))
poly1
plot(poly1,col="blue",border='red',main='A simple polygon feature')

#Create a raster
library(terra)
raster1 <- rast(nrows = 10, ncols=10)
values(raster1) <- seq(0,5,1)
raster1
plot(raster1,main="A simple raster")

#Extract Values to points
vect_pt <- terra::vect(point1)
vect_pt

#set crs
terra::crs(vect_pt) <- terra::crs(raster1)
vect_pt

#Extract
extracted_value <- extract(raster1,vect_pt)
extracted_value

#Plot data
terra::plot(raster1,main="Raster with Point")
terra::plot(vect_pt,cex=1.5,col="blue",add=T)

## Simple map with ggplot
ggplot(point1) + geom_sf()

ggplot() +
  geom_sf(data=poly1,fill='red',color='blue',linewidth=2) +
  geom_sf(data = point1,color='blue',size=2)



require(maptiles)
install.packages('move')
require(move)

install.packages('tidyterra')

#Load locs
fisher_locs <-move::fishers
fisher_vect <- terra::vect(fisher_locs)

#background map
tile <- get_tiles(fisher_vect,provider="Esri.WorldStreetMap",crop=F,zoom=5,cachedir = ".") %>%
  terra::project(.,terra::crs(fisher_vect))
require(tidyterra)
map <- ggplot() +
  geom_spatraster(data=tile,maxcell=Inf) +
  geom_sf(data=fisher_vect,fill=NA,color="#000000")+
  coord_sf(datum = pull_crs(fisher_vect)) +
  theme_minimal()

map  

####







## install.packages("hexbin")
## library(hexbin)

## surveys_plot +
##  geom_hex()

## ### Challenge with hexbin
## ##
## ## To use the hexagonal binning with **`ggplot2`**, first install the `hexbin`
## ## package from CRAN:
## 
## install.packages("hexbin")
## library(hexbin)
## 
## ## Then use the `geom_hex()` function:
## 
## surveys_plot +
##     geom_hex()
## 
## ## What are the relative strengths and weaknesses of a hexagonal bin
## ## plot compared to a scatter plot?











## ### Challenge with scatter plot:
## ##
## ##  Use what you just learned to create a scatter plot of `weight`
## ## over `species_id` with the plot types showing in different colors.
## ## Is this a good way to show this type of data?





## ## Challenge with boxplots:
## ##  Start with the boxplot we created:
## ggplot(data = surveys_complete, mapping = aes(x = species_id, y = weight)) +
##   geom_boxplot(alpha = 0) +
##   geom_jitter(alpha = 0.3, color = "tomato")
## 
## ##  1. Replace the box plot with a violin plot; see `geom_violin()`.
## 
## ##  2. Represent weight on the log10 scale; see `scale_y_log10()`.
## 
## ##  3. Create boxplot for `hindfoot_length` overlaid on a jitter layer.
## 
## ##  4. Add color to the data points on your boxplot according to the
## ##  plot from which the sample was taken (`plot_id`).
## ##  *Hint:* Check the class for `plot_id`. Consider changing the class
## ##  of `plot_id` from integer to factor. Why does this change how R
## ##  makes the graph?
## 





























## ### Plotting time series challenge:
## ##
## ##  Use what you just learned to create a plot that depicts how the
## ##  average weight of each species changes through the years.
## 









## install.packages("patchwork")





## ### Final plotting challenge:
## ##  With all of this information in hand, please take another five
## ##  minutes to either improve one of the plots generated in this
## ##  exercise or create a beautiful graph of your own. Use the RStudio
## ##  ggplot2 cheat sheet for inspiration:
## ##  https://www.rstudio.com/wp-content/uploads/2015/08/ggplot2-cheatsheet.pdf
## SQL databases and R

## install.packages(c("dbplyr", "RSQLite"))



library(dplyr)
library(dbplyr)
mammals <- DBI::dbConnect(RSQLite::SQLite(), "data_raw/portal_mammals.sqlite")

src_dbi(mammals)

tbl(mammals, sql("SELECT year, species_id, plot_id FROM surveys"))

surveys <- tbl(mammals, "surveys")
surveys %>%
    select(year, species_id, plot_id)



















## with dplyr syntax
species <- tbl(mammals, "species")

left_join(surveys, species) %>%
  filter(taxa == "Rodent") %>%
  group_by(taxa, year, plot_id) %>%
  tally() %>%
  collect()

## with SQL syntax
query <- paste("
SELECT a.year, b.taxa,count(*) as count
FROM surveys a
JOIN species b
ON a.species_id = b.species_id
AND b.taxa = 'Rodent'
GROUP BY b.taxa, a.year, a.plot_id",
sep = "" )

tbl(mammals, sql(query))



### Challenge
## Write a query that returns the number of rodents observed in each
## plot in each year.

##  Hint: Connect to the species table and write a query that joins
##  the species and survey tables together to exclude all
##  non-rodents. The query should return counts of rodents by year.

## Optional: Write a query in SQL that will produce the same
## result. You can join multiple tables together using the following
## syntax where foreign key refers to your unique id (e.g.,
## `species_id`):

## SELECT table.col, table.col
## FROM table1 JOIN table2
## ON table1.key = table2.key
## JOIN table3 ON table2.key = table3.key


## species <- tbl(mammals, "species")
## genus_counts <- left_join(surveys, plots) %>%
##   left_join(species) %>%
##   filter(taxa == "Rodent") %>%
##   group_by(plot_type, genus) %>%
##   tally() %>%
##   collect()

### Challenge

## Write a query that returns the total number of rodents in each
## genus caught in the different plot types.

##  Hint: Write a query that joins the species, plot, and survey
##  tables together.  The query should return counts of genus by plot
##  type.



download.file("https://ndownloader.figshare.com/files/3299483",
              "data_raw/species.csv")
download.file("https://ndownloader.figshare.com/files/10717177",
              "data_raw/surveys.csv")
download.file("https://ndownloader.figshare.com/files/3299474",
              "data_raw/plots.csv")
library(tidyverse)
species <- read_csv("data_raw/species.csv")
surveys <- read_csv("data_raw/surveys.csv")
plots <- read_csv("data_raw/plots.csv")

my_db_file <- "data/portal-database-output.sqlite"
my_db <- src_sqlite(my_db_file, create = TRUE)

my_db



### Challenge

## Add the remaining species table to the my_db database and run some
## of your queries from earlier in the lesson to verify that you
## have faithfully recreated the mammals database.
