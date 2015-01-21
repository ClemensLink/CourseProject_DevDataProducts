library(UsingR)
library(shiny)

x <- rnorm(10000)
	
shinyServer(

function(input, output) {
	
	output$clePlot <- renderPlot({

	hx <- hist(x, input$breaks, plot=FALSE)
	plot(hx, col=ifelse(abs(hx$breaks) < input$threshold, 4, 2), main=input$myHeadline)
	text(63, 150, paste("numberOfValues = ", input$numberOfValues))
	text(63, 140, paste("breaks = ", input$breaks))})
	
	output$oid1 <- renderPrint({input$breaks})
	output$oid2 <- renderPrint({input$threshold})
	
	output$inputValue <- renderPrint({input$glucose})
	output$prediction <- renderPrint({diabetesRisk(input$glucose)})

})
