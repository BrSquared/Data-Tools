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
function(input, output, session) {
  
  x <- reactive({input$select})
  y <- reactive({input$select2})

  output$value <- renderText({
    ans <- if (x() == 1) {
      as.numeric(input$quant) * 0.0254
    } else if (x() == 2) {
      as.numeric(input$quant) * 0.3048
    } else if (x() == 3) {
     as.numeric(input$quant) * 0.9144
    }
    mult <- if (y() == 1) {
      100
    } else if (y() == 2) {
      1
    } else if (y() == 3) {
      0.001
    }
    out <- ans * mult
    out
  })    
}
