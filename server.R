library(shiny)
library(datasets)

fx<- function(x,y){
        data <- women
        tmp <- data[data$height == x  , ]
        out <- mean(tmp$weight)
        return (out)
}

shinyServer(
        function(input, output) {
                output$weightid <- renderPrint(fx(input$heightid))
        }
)    
