# ================================================
# 
# Developing Data Products Course 
# 
# 
# ================================================


library(shiny)

rpm <- function(diameter, vc) as.numeric(vc)*1000/(3.1416*diameter)

shinyServer(
  function(input,output){
   
    output$inputValue <- renderText({input$diameter})
    output$ometal <- renderText({input$metal}) # check vc
      
    output$rpm <- renderPrint({
        rpm(input$diameter, input$metal)
    })
  }
)

