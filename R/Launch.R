#' Launch WIAD interface
#'
#' This function launches the app by opening the default web browser.
#' 
#' @param archiveDir path to the archive directory
#' @param Interactive logical variable to force an interactive session
#' @return this should be run in an interactive R session
#' @export
#' @import shiny
#' @examples
#'
#' #Launch WIAD interface
#' wiad::Launch()
#'
#'
Launch <- function(archiveDir = './WIAD_ARCHIVE/',
                   Interactive = FALSE){
  
  package = 'wiad'
  path = 'app'
  
  appDir <- system.file(path = path,
                        package = package)
  
  ARCHIVE_DIR = archiveDir
  
  launch.browser = TRUE  
  
  optiions = list(
    launch.browser 
    =
      launch.browser
  )
  
  message('The WIAD app is being loaded ...')
  
  ## Only run examples in interactive R sessions
  if (interactive()|Interactive) 
  {
    
    app = shinyAppDir(appDir = appDir, options = optiions)
    
  }
  else
  {
    
    warning('This function requires an interactive R session!')
    
    app = NULL
    
  }
  
  return(app)
}