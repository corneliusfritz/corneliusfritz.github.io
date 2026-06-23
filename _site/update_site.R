#!/usr/bin/env Rscript

# Paths configuration
SITE_ROOT <- "/Users/corneliusfritz/Dropbox/GitHub/corneliusfritz.github.io"
OVERLEAF_DIR <- "/Users/corneliusfritz/Dropbox/Apps/Overleaf/cv_cornelius_fritz"
CV_TEX <- file.path(OVERLEAF_DIR, "cv_long.tex")
CV_PDF_SRC <- file.path(OVERLEAF_DIR, "cv_long.pdf")
CV_PDF_DEST <- file.path(SITE_ROOT, "assets/pdf/cv_cornelius_fritz.pdf")
SOFTWARE_JSON <- file.path(SITE_ROOT, "_data", "software.json")

# Parsing arguments
args <- commandArgs(trailingOnly = TRUE)
push <- "--push" %in% args
compile_cv <- "--compile-cv" %in% args
no_downloads <- "--no-downloads" %in% args
no_copy_cv <- "--no-copy-cv" %in% args

message("=== Website Update Agent starting ===")
message(paste("Time:", Sys.time()))

# 1. Compile LaTeX CV (only if explicitly requested)
if (compile_cv) {
  message("\n--- Step 1: Compiling CV LaTeX ---")
  if (!file.exists(CV_TEX)) {
    warning(paste("Warning: CV LaTeX file does not exist at", CV_TEX))
  } else {
    # Construct command to run in Overleaf directory
    cmd <- paste("cd", shQuote(OVERLEAF_DIR), "&& /Library/TeX/texbin/latexmk -pdf -interaction=nonstopmode cv_long.tex")
    message("Running: ", cmd)
    status <- system(cmd, wait = TRUE)
    if (status != 0) {
      warning("Warning: latexmk compilation failed.")
    }
  }
} else {
  message("\n--- Step 1: Skipping CV LaTeX compilation (use --compile-cv to compile) ---")
}

# 1b. Copy CV PDF if available and not skipped
if (!no_copy_cv) {
  message("\n--- Step 1b: Checking/Copying CV PDF to website assets ---")
  if (file.exists(CV_PDF_SRC)) {
    success <- file.copy(CV_PDF_SRC, CV_PDF_DEST, overwrite = TRUE)
    if (success) {
      message("CV PDF copied successfully to:")
      message("  ", CV_PDF_DEST)
    } else {
      warning("Warning: Failed to copy compiled PDF to assets.")
    }
  } else {
    message("No compiled PDF found at Overleaf directory to copy: ", CV_PDF_SRC)
  }
} else {
  message("\n--- Step 1b: Skipping CV PDF copy ---")
}

# 2. Fetch Downloads and Update Data
if (!no_downloads) {
  message("\n--- Step 2: Updating CRAN software downloads ---")
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    message("Installing missing dependency: jsonlite")
    install.packages("jsonlite", repos = "https://cloud.r-project.org")
  }

  if (!file.exists(SOFTWARE_JSON)) {
    stop(paste("Error: Software JSON file not found at", SOFTWARE_JSON))
  }

  software <- jsonlite::fromJSON(SOFTWARE_JSON, simplifyDataFrame = FALSE)
  updated_count <- 0

  for (i in seq_along(software)) {
    pkg <- software[[i]]
    if (!is.null(pkg$cran)) {
      message(paste("Fetching downloads for:", pkg$cran))
      url <- paste0("https://cranlogs.r-pkg.org/downloads/total/last-month/", pkg$cran)

      tryCatch(
        {
          # fetch using standard jsonlite
          res <- jsonlite::fromJSON(url)
          if (!is.null(res$downloads) && length(res$downloads) > 0) {
            pkg$downloads <- as.integer(res$downloads[1])
            software[[i]] <- pkg
            message(paste("  Downloads count:", pkg$downloads))
            updated_count <- updated_count + 1
          } else {
            warning(paste("  No download stats returned for", pkg$cran))
          }
        },
        error = function(e) {
          warning(paste("  Failed to fetch downloads for", pkg$cran, ":", e$message))
        }
      )
    }
  }

  if (updated_count > 0) {
    # write back to file
    json_text <- jsonlite::toJSON(software, auto_unbox = TRUE, pretty = TRUE)
    writeLines(json_text, SOFTWARE_JSON)
    message("Software data file updated successfully!")
  } else {
    message("No software updated.")
  }

  # Step 2b: Update Downloads Time-series Chart
  message("\n--- Step 2b: Regenerating software downloads chart ---")
  chart_script <- file.path(SITE_ROOT, "update_downloads_chart.R")
  if (file.exists(chart_script)) {
    system(paste("Rscript", shQuote(chart_script)))
  }
} else {
  message("\n--- Step 2: Skipping CRAN software downloads updates ---")
}
