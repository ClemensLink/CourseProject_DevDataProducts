## The readme file to document my first shiny app

### Background

This application was developed as course project for the Coursera class "Developing Data Products" from ... It is my first shiny app and so the functionality is small but in my opinion nice and adequate to learn the basic idea behind shiny.

### Purpose

The main purpose of this application is to get familiar with the concepts of shiny. So the **user** has very limited possibility to interact with the app while the **developer** has learned a lot building it :-)
### How to run

Placing **ui.R** and **server.R** in one directory, you can run the application in **RStudio** via the **runApp()** command.

If this doesn't work out one of three hints might help you:

1. Install the shiny package via **install.packages("shiny")**
2. Load the shiny library via **library(shiny)**
3. set your path in RStudio to the directory that includes the shiny app (ui.R & server.R) via **setwd("...")**

### How to use

After the app is launched in your browser you see three main areas:

1. the **headline on the top** of the window
2. the **sidebar panel on the left** to input and manipulate data
3. the **main panel on the right** showing the output

The user of this application can make some choices in the **sidebar panel** on the left to influence the structure and layout of a histogram chart in the **main panel**.

This histogram is based on a random set of 10000 values in Gauss distribution (rnorm). It is randomly generated everytime the user launches the app and always shows the characteristical bell curve.

The following three main factors can be influenced through user input in the **sidebar panel**:

1. Headlines of the histogram: here the user can choose between title, sub title, author and date. These headlines are independantly shown on top of the histogram.
2. Number of breaks in the histogram: to keep it simple, the application offers a slider to choose between four standard values: 10, 50, 90, or 130 breaks.
3. The threshold to color the tails of the bell curve: while the histogram is colored blue, the user can influence the size of the tails colored in red.

In addition to the adaption of the plot, the application also shows the numerical input values for breaks and thresholds in the **main panel** below the histogram.

### Famous last words

Of course this functionality doesn't make a lot of sense or impact, but is a nice gimmick to play around and give visual feedback in the application.
