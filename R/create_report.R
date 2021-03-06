# generic function to create a report
create.report <- function(data, Rmd.file, output.file, output.folder = "") {

  res.file <- rmarkdown::render(Rmd.file,
                                output_format = "all",
                                output_file = output.file,
                                output_dir = output.folder,
                                envir = data)

  return(res.file)

}
