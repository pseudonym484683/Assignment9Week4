
library(shiny)

# Define server logic required to draw a histogram
# Load Data

#Help URL https://unemploymentinindia.cmie.com/kommon/bin/sr.php?kall=wsttimeseries&index_code=050050000000&dtype=total

#Copy the entire data in a csv file : "indianstatesunemp.csv"

datamain <- read.csv("./indianstatesunemp.csv")



# Define a server for the Shiny app 

function(input, output) { 
  
  
  
  # Fill in the spot we created for a plot 
  
  output$graphout <- renderPlot({ 
    
     # Render a barplot 
   #p <- plot_ly( x = input$States, y=datamain[,1] ,type = "bar") 
    barplot(datamain[,input$States],main = input$States  ,names.arg = datamain[,1],  
            ylab=paste("Percentage of unemployment in " , input$States), xlab="Month - Year") 
   
  })
  
}