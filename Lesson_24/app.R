library(shiny)
library(plotly)


ui <- fluidPage(
  selectInput("choice", "Choose", choices = names(mtcars), selected = 'hp'),
  plotlyOutput("graph")
)

server <- function(input, output, session){
  

  output$graph <- renderPlotly({
    plot_ly(mtcars, x = ~get(input$choice), y = ~mpg, type = 'scatter', mode = 'markers') %>%
      layout(title = "Sample mtcars Plot", template = 'plotly_dark', 
             xaxis = list(title = input$choice))
  })
}

shinyApp(ui, server)