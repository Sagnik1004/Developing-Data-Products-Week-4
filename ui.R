#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Prime number check"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
              sliderInput("N",
                        "Choose a number to check its prime or not:",
                        min = 1,
                        max = 100,
                        value = 1),
              checkboxInput('ShowSquare', 'Show the square of your number', value = FALSE),
              checkboxInput('Showcube', 'Show the cube of your number', value = FALSE),
              submitButton('Submit')
        ),

        # Show a plot of the generated distribution
        mainPanel(
          tabsetPanel(type = 'tabs', 
                      tabPanel(title = 'Prime Check', br(), textOutput(outputId = 'Prime')),
                      tabPanel(title = 'Squarred number', br(), textOutput(outputId = 'square')),
                      tabPanel(title = 'cubed number', br(), textOutput(outputId = 'Cube')),
                      tabPanel(title = 'Read app documentation', br(), textOutput(outputId = 'AppManual'))
          
          
            
        )
    )
))
)
