#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# Packages ----
library(shiny)  # Required to run any Shiny app
library(ggplot2)  # For creating pretty plots
library(dplyr)  # For filtering and manipulating data
library(leaflet)
library(plotly)
library(shinyjs)
library(shinyBS)

# Loading data ----

# ui.R ----
ui <- (navbarPage(title = "DisMAP",
                  theme = "www/style/style.css",
                  footer = includeHTML("footer.html"),
                  fluid = TRUE, 
                  collapsible = TRUE,
                  
                  # ----------------------------------
                  # tab panel 1 - Home
                  tabPanel("Home",
                           includeHTML("home.html"),
                           tags$script(src = "plugins/scripts.js"),
                           tags$head(
                             tags$link(rel = "stylesheet",
                                       type = "text/css",
                                       href = "plugins/font-awesome-4.7.0/css/font-awesome.min.css"),
                             tags$link(rel = "icon",
                                       type = "image/png",
                                       href = "images/logo_icon.png")
                           )
                  ),
                  
                  # ----------------------------------
                  # tab panel 2 - Single Species
                  tabPanel("Single Species Analysis"),
                  
                  # ----------------------------------
                  # ----------------------------------
                  # tab panel 3 - Multispecies Overlap
                  tabPanel("Multispecies Overlap Analysis"),
                  
                  # ----------------------------------
                  # tab panel 4 - Availability to Port
                  tabPanel("Port Availability Analysis")
                  
))

# server.R ----
server <- function(input, output) {}


# Run the application 
shinyApp(ui = ui, server = server)

