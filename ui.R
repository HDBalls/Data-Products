library(shiny)

shinyUI(
  navbarPage("My Shiny Application",
             tabPanel("Plots",
                      fluidPage(
                        titlePanel("This will show the relationship between different variables, transmission type and the MPG for some cars"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                            submitButton("Submit")
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("mpgPlot")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("How to Use",
                      
                      h3("Project: Data Products"),
                      helpText("The dataset being used has different variables and these can be used to find a relationship between the variable and the MPG taking into consideration whether the vehicle is an automatic or a manual transmission.",
                               "To see the effect of each variable, use the dropdown and press the Submit button.",
                               "You can toggle between the boxplot and the regression model."),
                                   ),
                      h3("Data Definition"),
                      p("This is a dataset with with 32 observations and 11 variables."),
                       
                      p("  - Miles/(US) gallon"),
                      p("  - Number of cylinders"),
                      p("  - Displacement (cu.in.)"),
                      p("  - Gross horsepower"),
                      p("  - Rear axle ratio"),
                      p("  - Weight (lb/1000)"),
                      p("  - 1/4 mile time"),
                      p("  - V/S"),
                      p("  - Transmission"),
                      p("  - Number of forward gears"),
                      p("  - Number of carburetors"),
             
             
  )
)