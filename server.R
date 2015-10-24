library(shiny)
data("airquality")
library(ggplot2)
shinyServer(
        function(input, output){
               output$hist <- renderPlot({
                       n <- input$n
                       g <- ggplot(data=airquality)
                       g + geom_histogram(aes(Temp), color="black", fill="steelblue",
                                          binwidth=41/n) + 
                               ggtitle("Air Temperature in New York")
               }) 
        }
)