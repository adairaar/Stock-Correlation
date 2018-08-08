#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(quantmod)
library(PerformanceAnalytics)
library(xts)

shinyServer(function(input, output) {
   
  Stock1 = NULL
  Stock2 = NULL
  
  Data1 <- reactive({
    Stock1 <- as.character(input$Stock1)
    getSymbols(Stock1)
    Stock1 <- getSymbols(as.character(input$Stock1))
  })
  
  Data2 <- reactive({
    Stock2 <- as.character(input$Stock2)
    getSymbols(Stock2)
    Stock2 <- getSymbols(input$Stock2)
  })
  
  output$distPlot <- renderPlot({
    input$newplot
    Stock1 <- AAPL
    Stock2 <- GOOG
    #Stock1 = Data1()
    Data <- cbind(diff(log(Cl(Stock1))),diff(log(Cl(Stock2))))
    chart.Correlation(Data)
    #plot(0, xaxt = 'n', yaxt = 'n', bty = 'n', pch = '', ylab = 'y', xlab = 'x')
  })

  
})
