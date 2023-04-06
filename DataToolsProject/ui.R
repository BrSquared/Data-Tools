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
fluidPage(

    # Application title
    titlePanel("Unit Conversions"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
          selectInput("select", label = h3("Input Unit"), 
                      choices = list("Inches" = 1, "Feet" = 2, "Yards" = 3), 
                      selected = 1),
          textInput("quant", label = "Amount")
        ),

        # Show a plot of the generated distribution
        mainPanel(
          selectInput("select2", label = h3("Output Unit"),
                      choices = list("cm" = 1, "m" = 2, "km" = 3), selected = 1),
          h2("Output Amount"),
          (verbatimTextOutput("value")),
          br(),
          h3("How to"),
          h4("Select input units on the left, type the amount of of said unit to convert, then select the output unit on the right")
        )
    )
)
