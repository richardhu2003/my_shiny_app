Shiny Application and Reproducible Pitch - Car MPG
========================================================
author: Jian Hu
date: 10/19/2017
autosize: true

Overview
========================================================
This presentation is built as part of a final project for the course "Developing Data Products"" in the Coursera Data Science Specialization.For more details on authoring R presentations please visit <https://support.rstudio.com/hc/en-us/articles/200486468>.

The app developed for the first part of the assignment demo is avalilable at: https://richardhu2003.shinyapps.io/my_shiny_app/

Source code for ui.R and server.R files are available on the GitHub repo: https://github.com/richardhu2003/shiny_app_mtcars/


Web Application functionality
========================================================
The web application provides a tool to examine the relationship between MPG and Weight.

- You can break it down by transmission type: automatic or manual.

- While visualizing the data, the tool will fit a linear regression and show you thestatistical relationship between MPG and Weight.

- It is obvious that MPG decreases in Weight in both automatic and manual transmission types.


Data Summary
========================================================


```r
data("mtcars")
summary(mtcars[c("mpg","wt")])
```

```
      mpg              wt       
 Min.   :10.40   Min.   :1.513  
 1st Qu.:15.43   1st Qu.:2.581  
 Median :19.20   Median :3.325  
 Mean   :20.09   Mean   :3.217  
 3rd Qu.:22.80   3rd Qu.:3.610  
 Max.   :33.90   Max.   :5.424  
```

MPG vs Weight by Transmission Type
========================================================
We fit a linear regression to demonstrate the relationship between MPG and Weight, boken down by transmission type.

![plot of chunk unnamed-chunk-2](my_shiny_app_presentation-figure/unnamed-chunk-2-1.png)
