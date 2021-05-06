#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fixedPage(
  
  #Add image in a new row above title panel
  fluidRow(
    column(3, 
    img(src="logo_op+lait_courriel.png")
          )
    
  ),
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  fluidRow(
    column(3, 
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    column(9,
      tabsetPanel(
        tabPanel("Plot",
          plotOutput("distPlot")
        ),
        tabPanel("Plot2",
                 plotOutput("distPlot2")
        ))
    ),
    
    #Add a footer row with 3 even columns
    column(4,
           tags$footer("Simon Dufour")
           ),
    column(4,
           tags$a(href="simon.dufour@umontreal.ca", "simon.dufour@umontreal.ca")
           ),
    column(4,
           tags$a(href="https://www.oplait.org/", "www.oplait.org")
           )
    
    
  )
)
