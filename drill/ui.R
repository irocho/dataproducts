# ================================================
#
# Developing Data Products, Coursera 2015
#
# Final Project
# ================================================

library(shiny)
shinyUI(fluidPage(
  titlePanel("Calculate an electric drill speed [rpm]  "),
  hr(),
  
  sidebarPanel(
      h4('Howto:'),
      h4('You have to choose the final diameter and the type of material you use '), 
      hr(),
      numericInput ('diameter','diameter [mm] of the hole',10, min=1, max=100, step=1),
      selectInput("metal", 
                  label="Material used", 
                  choices= c("steel (50 kg/m2)"= 30,
                             "steel (70 kg/m2)"= 25,
                             "steel (90 kg/m2)"= 18,
                              "bronze"= 40,
                              "aluminium"= 100,
                              "brass"=80)
                  )
      ),
  
    mainPanel(
      hr(),hr(),
      h4('So, the hole you wish is [mm]:' ),
      textOutput("inputValue"),
      h4('the  proper linear speed according to my database is [m/s]:'),
      textOutput("ometal"),
      hr(),
      h3('Speed to select in your electric drill [rpm]'),
      verbatimTextOutput("rpm"),
      hr()
    )
  )
)
