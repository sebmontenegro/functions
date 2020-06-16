preload <- function(x){
  #This function evaluates Package x. If it is installed, it loads the package. If it is
  #not, it installs it.
  x <- as.character(x)
  if(!require(x,character.only = TRUE)){
    install.packages(x,repos = "https://cran.r-project.org")}
  require(x,character.only = TRUE)
}
