
library(shiny)

# Load Data

datamain <- read.csv("./indianstatesunemp.csv")





# Use a fluid Bootstrap layout 

fluidPage(   
  
  # Give the page a title 
  
  titlePanel("Percentage of Unemplyment in India and Different State"), 
  p("Author: Sdey         [ Date : 8 Sep 2018]"),
  # Generate a row with a sidebar 
  
  sidebarLayout(       
  
    # Define the sidebar with one input 
    
    sidebarPanel(
                 
                 selectInput("States", "Indian States:",  
                             
                             choices=colnames(datamain[,2:29])), 
                 
                 hr(), 
                 
                 p("This shiny application is part of Coursera Assignment of Developing Data Products Week4"),
                 p("Here , Unenplyment percentage of India and Different states will be displyed."),
        
                 p("Get the data from the Below URL and create the CSV file"),
                 p("Help URL - https://unemploymentinindia.cmie.com/ kommon/bin/sr.php?kall=wsttimeseries&index,
                    _code=050050000000&dtype=total"),
                 p("Note : ui.R , server.R and csv file are uploaded into Github")
                 
                 
                 
    ), 

    # Create the barplot 
    
    mainPanel( 
      
      plotOutput("graphout")   
      
    ) 

  ) 
  
) 

