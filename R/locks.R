lock_css <- '.btn-lockClass {
  background-color: white;
  color: #90EE90;
  border-color: #90EE90;
}'

# tell DT where shinyWidgets stores the pretty toggle assets
lock_html <- function() {
  if (!rlang::is_installed('shinyWidgets')) {
    return(NULL)
  }
  list(
    htmltools::htmlDependency(
      'shinyWidgets',
      packageVersion('shinyWidgets'),
      src = 'assets',
      script = 'shinyWidgets-bindings.min.js',
      stylesheet = 'shinyWidgets.css',
      package = 'shinyWidgets'
    ),
    htmltools::htmlDependency(
      name = 'pretty',
      version = '3.0.3',
      src = 'assets/pretty-checkbox',
      package = 'shinyWidgets',
      stylesheet = 'pretty-checkbox.min.css'
    )
  )
}
