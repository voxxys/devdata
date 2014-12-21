library(shiny)
shinyServer(
  function(input,output) {
    output$newPlot <- renderPlot({
      x <- seq(0,5,0.02)
      
      plot(x,dweibull(x,input$shape,input$scale),col="red",type = "l",xlab = "x",ylab = "f(x)")
      
      
    }
    )
  
  }
)