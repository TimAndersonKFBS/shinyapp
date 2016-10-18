

library(shiny)
library(FinCal)
library(ggplot2)

shinyServer(function(input, output) {
  
  amount <- reactive({
    amt <- fv(input$rate/12,input$nper*12,-input$pv,-input$pmt)
  })  
  
  output$text <- renderText({amount()})
  
  
  output$plot <- renderPlot({
    
    duration_months <- input$nper*12
    months <- 1:duration_months
    val <- 1:duration_months
    
    for(i in 1:duration_months){
      val[i] <-  fv(input$rate/12,i,-input$pv,-input$pmt)
    }
    
    
    qplot(months,val,xlab = "Months",ylab = "Value of Investment")
    
    
    
    
  })
    
  
})
