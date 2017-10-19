#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above. It builds the Panel of
# input selection box and output plot for the MTCars dataset.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a scatterplot
shinyUI(fluidPage(
  
    # Application title
    titlePanel("MPG vs Weight by transmission type"),
    
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
      
      sidebarPanel(
        h5("We will examine MPG versus weight of a vehicle, broken down by number of transimission type"),
        selectInput("am", label = "Please select the transimission type: Automatic = 0, Manual = 1",
                    choices = c(0, 1), selected = 0),
        h5("We will fit a linear regression model."),
        h5("As you can see, MPG decreases with weight in both automatic and manual transmissions.")
      ),
        
      # Show selection box and scatterplot 
      mainPanel(
        plotOutput("MPGPlot")
      )
      
    )
)
)