#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# This one is for the MTCars dataset and is comparing MPG to WT via am.

# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
data(mtcars)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$MPGPlot <- renderPlot({
    
    # select data based on input$am from ui.R
    yMPG <- mtcars[mtcars$am == input$am,]$mpg 
    xWT <- mtcars[mtcars$am == input$am,]$wt
    
    # draw scatterplot of MPG vs WT; include linear regression model
    plot(x = xWT, y = yMPG, pch = 19, col = "black", xlab = "Weight (in thousand lbs)", ylab = "Mileage per Gallon")
    abline(lm(yMPG ~ xWT), col = "red")
    
  })
  
})