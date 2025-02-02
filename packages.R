# List of required packages
packages <- c(
  "ggplot2", "dplyr", "tidyr", "readr", 
  "purrr", "stringr", "lubridate", "forcats", 
  "knitr", "rmarkdown", "quarto", "gt"
)

# Install missing packages
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
  }
}

# Apply the function to each package
invisible(lapply(packages, install_if_missing))

# Load all packages
lapply(packages, library, character.only = TRUE)

# Print a message
cat("✅ All required packages are installed and loaded!\n")