#
# Cousera: Developing Data Products Final Assignment
# Application will demonstrate a time value money example within the Shiny environment
#

library(shiny)

pageWithSidebar(
  headerPanel('Value of an investment'),
  sidebarPanel(
    sliderInput("nper",
                "How long will you hold the investment? (Years):",
                min = 1,  max = 50, value = 15),
    sliderInput("rate",
                "What is your Rate of Interest",
                min = .01,  max = .20, value = .06),
    numericInput('pv', 'What is your Starting Balance', 10000,
                 min = 0, max = 100000000),
    numericInput('pmt', 'What is your Monthly Investment', 100,
                 min = 0, max = 1000000)
  ),
  mainPanel(
    h3("Final Value of Investment"),
    textOutput("text"),
    plotOutput("plot")
   "test"
  )
)
