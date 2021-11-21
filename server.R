#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  PrimeCheck<- reactive({
    
    
    
    n= input$N
    library(matlab)
    if(isprime(n)!=1){
      return('Not Prime')
    }
    else{
      return('Prime')
    }
    
    
  })
  
  output$Prime<- renderText({
    PrimeCheck()
  })
  
  output$square<- renderText({
    if(input$ShowSquare==TRUE){
      squarred_num<- (input$N)^2
      squarred_num
    }
  })
  
  output$Cube<- renderText(
    if(input$Showcube==TRUE){
      cubed_num<- (input$N)^3
      cubed_num
    }
  )
  
  output$AppManual<- renderText({
    manual= 'How the app works: 1. Use the slider to choose a number between 1 to 50 for checking if its prime  or not. 
    2. You can also choose to tick the checkbox for showing the square of your selected number.
    3. Similarly, you can also choose to tick the checkbox for showing the cuve of your selected number.
    4. Once you have selected a number using the slider and decided on ticking/ignoring the checkboxes, you will have to press "Submit" for seeing the output
    5. The output for whether your number is prime or not will be displayed in the "Prime Check" tab. 
    Similarly, the output for the squarred number will be displayed in the "Squarred number" tab and cubed number in the "cubed number" tab.
    Thank you for using this shiny app. Have a nice day!
    '
  })
  
})
