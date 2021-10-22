##  Tab Build New Test Case ----

tabPanel("BUILD",
         value = "Build",
         fluidPage
         (
           
           fluidRow(
           
           h3("Build you Hashed and Salted Password"),
           
           selectInput(
             inputId="select_hash",
             label="Select Hash Function",
             choices=c("md5", "sha1", "crc32", "sha256", "sha512",
                       "xxhash32", "xxhash64", "murmur32", "spookyhash",
                       "blake3"),
             selected = "sha512",
             multiple = FALSE
           ),
           actionButton(inputId = "start_hash",
                        label="Submit",
                        icon = NULL,
                        width = "100%")
           
           
           
           
         ),
           
           fluidRow(
             verbatimTextOutput(
               outputId="hashed_output",
               placeholder = FALSE)
           )
           
           
           
           ))