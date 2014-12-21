library(shiny)
shinyUI(pageWithSidebar(
  headerPanel(div(align = "center", 'Weibull distribution PDF')),
  sidebarPanel(
    sliderInput('shape','shape parameter',value = 1,min=0.1,max=10,step = 0.1),
    sliderInput('scale','scale parameter',value = 1,min=0.1,max=10,step = 0.1)
  ),
  mainPanel(
    plotOutput('newPlot')
  )
))