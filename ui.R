library(shiny)

shinyUI(pageWithSidebar(

# Application title
headerPanel("Course Project - Developing Data Products"),

sidebarPanel(
	checkboxGroupInput("myHeadline", "Please choose your favourite headline(s):",
		c("Title" = "Nice Histogram",
		"Sub title" = "Developing Data Products Course Project",
		"Author" = "Clemens Link",
		"Date" = "2015-01-18")),
	sliderInput('breaks', 'Please enter number of breaks:',
		value = 90, min = 10, max = 130, step = 40,),
	numericInput('threshold', 'Please enter the threshold for the red tails [0.2 to 3.0]', 
		1.6, min = 0.2, max = 3, step = 0.1)
),

mainPanel(
	h3('Here we go'),
	plotOutput('clePlot'),
	
	h4('Number of breaks entered:'),
	verbatimTextOutput("oid1"),
	h4('Threshold chosen:'),
	verbatimTextOutput("oid2")
)
))
