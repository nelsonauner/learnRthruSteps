Learn R By Steps
=================

An applied tutorial 
-----------

1. Examine steps.csv with a text editor (like notepad, notepad++,sublimetext2,etc).
2. A quick guide of useful commands: 

- `getwd()` shows what folder the R program is looking at
- `setwd("C:\...")` changes the folder that R is looking at
-`<-` or `=` assigns objects. so `steps <- read.csv("steps.csv")` will read in the file "steps.csv" and assign it to `steps`

Once you have objects in memory, (i.e. try `x <- 1:5` `x = 5`)

- `str(x)` shows the structure of x 
- `head(x,n)` shows first `n` entries of `x`.  head(`x`) defaults to `n=6`
- `length` and `dim` show length of a vector  and dimensions of a 2 (or higher) dimensional object


Practice these on the data you loaded


3. access the columns of `x` by `$` e.g. `x$food` accesses the `food` part of `x`
4. plot a series with `plot(x$food)` will make a plot if `x$food` is a one-dimensional series
5. google `dplyr` and read the tutorial. Use it to
6. calculate the mean steps taken per person
7. calculate the mean steps taken per person, per year

8. open ended steps (haha): 
- find the date that clare got a step tracker
- write a summary of each person's steps pattern
- how are step patterns influenced by date?


