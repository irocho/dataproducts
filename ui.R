# ================================================
#
# Developing Data Products, Coursera 2015
#
# Final Project
# ================================================

library(shiny)
shinyUI(fluidPage(
  titlePanel("Suitable speed [rpm]  (bit is made of steel HSS)"),
  
  sidebarPanel(
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
      h3('Speed to select in the electric drill'),
      h3(''),
      h4('The hole you wish is [mm]:' ),
      textOutput("inputValue"),
      h4('The  proper linear speed according to my database is [m/s]:'),
      textOutput("ometal"),
      h4(' The speed in the drill should be [rpm]: '),
      verbatimTextOutput("rpm"),
      hr()
    )
  )
)
