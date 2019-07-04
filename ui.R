library(shiny)

# Loading the 'datasets' package which contains 'USPersonalExpenditure' dataset
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Title of the Application
    titlePanel("US Personal Expenditure Between 1940 to 1960"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with input to select the Year
      sidebarPanel(
        selectInput("Expenditure_Year", "Expenditure Year:", choices = colnames(USPersonalExpenditure)),
        hr(),
        helpText("This shiny app shows US Personal Expenditure under the period from 1940 to 1960 on some selected items"),
        hr(),
        helpText("Source code can be found at https://github.com/charlesgto/Developing-Data-Product")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("expenditurePlot"),
        h3('Total Expenditure'),
        verbatimTextOutput("prediction")
      )
      
    )
  )
)