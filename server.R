library(shiny)

shinyServer(function(input, output) {
    output$histogram <- renderPlot({
        dist <- rnorm(input$obs)
        hist(dist)
    })
    output$text1 <- renderText({paste(rev(strsplit(input$text1, NULL)[[1]]), collapse='')})
})
