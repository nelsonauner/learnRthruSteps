#data analysis often necessitates that we reshape the way data is structured
 #this piece of code will reshape our dataset from "wide" to "long" for ease of analysis
 #a wide dataset is presented with each different data variable in a separate column:
   #  chase      nelson	   clare    year
   # 2401.891	25034.4757	6921.3075	2000
   # 2302.405	13334.9751	6133.1228	2000
 #a long data set "stacks" these variables in one columnnm, with identifying variables in other columns
     # employee    steps     year
     # chase     2401.891    2000
     # chase     2302.405    2000
     # nelson    25034.4757  2000
     # nelson    13334.9751  2000
     # clare     6921.3075   2000
     # clare     6133.1228   2000
 
 #to reshape, we first need to install the package "reshape" (who would have thought..)
install.packages("reshape")
library(reshape)
#Now we tell R to create the new object "steps2", which is functionally a new dataset that is the reshaped from the object steps
 # we tell it to use data from 'steps', and what variables to use to identify 
 #id.vars=c("column that uniquely identifies an observation, "another column that uniquely identifies an observation"),
 #variable.name="new name for the describing variable column",
      #the values in this column are taken from the column titles
 #value.name="new name for the continuous variable column")
      #the values in this column are taken from the data in the columns not in id.vars
 #Sample code is here:
  steps2<-melt(steps, id.vars=c("date", "X", "year"),
                         variable.name = "employee",
                            value.name = "steps")
#we have now created a new object which make analysis easier (graphs!) 
 #GO TEAM
