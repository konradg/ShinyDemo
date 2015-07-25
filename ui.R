library(shiny)

# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Sample Shiny app"),
    
    # Sidebar with a slider input for number of observations
    sidebarPanel(
        p('You can plot a histogram of a normal distribution. Move the slider below to change the number of observations. There\'s also a simple string reverse feature to demonstrate the reactive output capabilities.'),
        sliderInput("obs", 
                    "Number of observations:", 
                    min = 1,
                    max = 1000, 
                    value = 500),
        textInput(inputId="text1", label="Text to reverse", value='Hello world')
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        plotOutput("histogram"),
        p('Reversed text:'),
        textOutput('text1')
    )
))