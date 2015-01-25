library(shiny)

shinyUI(fluidPage(
                titlePanel("Average Heights and Weights for American Women"),
        fluidRow(
                sidebarPanel(
                h4 ("Please select the height to see the average weight"),
                radioButtons ('heightid', "Height of woman in inches:",
                            c("58" = "58",
                              "59" = "59",
                              "60" = "60",
                              "61" = "61",
                              "62" = "62",
                              "63" = "63",
                              "64" = "64",
                              "65" = "65",
                              "66" = "66",
                              "67" = "67",
                              "68" = "68",
                              "69" = "69",
                              "70" = "70",
                              "71" = "71",
                              "72" = "72")
                        )),
                column(8,
                       verbatimTextOutput("text"),
                       br(),
                       br(),
                       p("In today's society, weight is a huge issue for women.  In this exercise, a women can select",  
                         "her height, in inches, and will be given the correlation for weight for an average woman.")
                ),
        mainPanel(
                 h4('The average weight of someone at that height is: '),        
                verbatimTextOutput("weightid")
                )
        )))
  
