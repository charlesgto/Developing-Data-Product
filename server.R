library(shiny)

library(datasets)

# PColor palette for the bar graph
colors = c("skyblue", "gray", "blue", "cyan", "black")

# user's selection
shinyServer(function(input, output) {
  
  ##Total sum of Expenditure by year
  output$prediction <- renderPrint({sum(USPersonalExpenditure[,input$Expenditure_Year]*1000)})
  
  output$expenditurePlot <- renderPlot({
    # Render a barplot
    barplot(USPersonalExpenditure[,input$Expenditure_Year],
            main=input$Expenditure_Year,
            ylab="Expenditure Amount",
            xlab="Description",
            col=colors)
  })
})