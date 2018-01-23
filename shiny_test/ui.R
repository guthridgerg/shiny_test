shinyServer(
  pageWithSidebar(
    headerPanel("Test App"),
    sidebarPanel(
      selectInput("Distribution", "Please Select Dist Type",
                  choices=c("Normal","Exponential")),
      sliderInput("sampleSize", "Please Select Sample Size: ",
                  min=100, max=5000, value=1000, step=100),
      conditionalPanel(condition = "input.Distribution == 'Normal'",
                       textInput("Mean", "Please Select the mean", 10),
                       textInput("sd", "Please Select Standard Deviation",3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("lambda", "Please Select Exponectial Lambda:", 1))

      
    ),
    mainPanel("Main",
      plotOutput("myPlot")
    )
  )
)
