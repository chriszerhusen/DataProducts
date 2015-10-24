library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Histogram Bin Size Explorer"),
        sidebarPanel(
                h1('Change Bin Size'),
                p('Use the slider below to change the size of the bins used to plot
                  the air temperature histogram to the right.'),
                sliderInput('n', 'Number of Bins', value=10, min=5, max=40, step=1)
        ),
        mainPanel(
                h3('Air Temperature Histogram'),
                plotOutput('hist'),
                p('This histogram plots 154 temperature readings from various sites
                  in New York in the summer of 1973. Use this data to explore the 
                  effect that different bin sizes have on the overall shape of the plot.
                  See how even small changes in bin size can result in large changes 
                  in the shape of the plot.  Try changing it from 10 to 11!')
        )
))