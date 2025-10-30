## Themes

# normal theme
theme_vz <- function(){ 
  font <- "Helvetica"   #assign font family up front
  
  theme_classic() %+replace%    #replace elements we want to change
    
    # colour 
    theme(
      
      #text elements
      plot.title = element_text(             #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2),               #raise slightly
      
      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 12),                #font size
      
      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 9,                 #font size
        hjust = 1),               #right align
      
      
      legend.title = element_text(           #caption
        family = font,            #font family
        size = 12),               #font size
      
      legend.text = element_text(           #caption
        family = font,           #font family
        size = 12),              #font size
      
      axis.title = element_text(             #axis titles
        family = font,            #font family
        size = 14),               #font size
      
      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = 12),               #font size
      
      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 10)),
      
      
      #since the legend often requires manual tweaking 
      #based on plot content, don't define it here
      
      #  facetting options
      strip.background = element_rect(color = "black"),  
      strip.text.x = element_text(size = 12),  
      strip.text.y = element_text(size = 12)
    )
}

# dark classic theme

theme_darkclassic <- function(){ 
  font <- "Helvetica"   #assign font family up front
  
  theme_classic() %+replace%    #replace elements we want to change
    
    # colour 
    theme(
      panel.background = element_rect(fill = "grey24", colour = "grey24"),
      plot.background = element_rect(fill = "grey24", colour = "grey24"),
      legend.background = element_rect(fill = "grey24", colour = "grey24"),
      legend.box.background = element_rect(fill = "grey24", colour = "grey24"),
      panel.border = element_blank(),
      
      plot.margin = unit(rep(1, 4), "lines"),
      
      #grid elements
      panel.grid.major = element_blank(),    #strip major gridlines
      panel.grid.minor = element_blank(),    #strip minor gridlines
      axis.ticks = element_blank(),          #strip axis ticks
      axis.line = element_line(colour = "white"),
      
      
      #since theme_minimal() already strips axis lines, 
      #we don't need to do that again
      
      #text elements
      plot.title = element_text(             #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2,                #raise slightly
        colour = "white"),
      
      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 12,
        colour = "white"),               #font size
      
      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 9,                 #font size
        hjust = 1,                #right align
        colour = "white"),       
      
      
      legend.title = element_text(           #caption
        family = font,            #font family
        size = 12,                 #font size
        colour = "white"),   
      
      
      legend.text = element_text(           #caption
        family = font,            #font family
        size = 12,                 #font size
        colour = "white"),    
      
      axis.title = element_text(             #axis titles
        family = font,            #font family
        size = 14,                #font size
        colour = "white"),
      
      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = 12,                 #font size
        colour = "white"),
      
      axis.text.x = element_text(            #margin for axis text
        margin=margin(5, b = 10)),
      
      
      #since the legend often requires manual tweaking 
      #based on plot content, don't define it here
      
      #  facetting options
      strip.background = element_rect(fill = "grey24", color = "white"),  
      strip.text.x = element_text(color = "white",
                                  size = 12),  
      strip.text.y = element_text(color = "white", 
                                  size = 12)
    )
}

# more dark themes: <https://jonlefcheck.net/2013/03/11/black-theme-for-ggplot2-2/>

