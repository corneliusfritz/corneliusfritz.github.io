#!/usr/bin/env Rscript

# Load libraries
suppressPackageStartupMessages({
  library(jsonlite)
  library(ggplot2)
  library(dplyr)
  library(lubridate)
})

SITE_ROOT <- "/Users/corneliusfritz/Dropbox/GitHub/corneliusfritz.github.io"
message("Regenerating historical CRAN downloads chart...")

# Define packages and date range (from Jan 2022 to current month)
pkgs <- c("iglm", "bigergm", "redeem", "ergm.sign")
start_date <- "2022-01-01"
end_date <- as.character(Sys.Date())

url <- paste0("https://cranlogs.r-pkg.org/downloads/daily/", start_date, ":", end_date, "/", paste(pkgs, collapse = ","))

tryCatch({
  res <- jsonlite::fromJSON(url, simplifyDataFrame = TRUE)
  
  # Re-structure the list column data frame into a single long data frame, checking for NULL
  df_list <- lapply(seq_len(nrow(res)), function(i) {
    df <- res$downloads[[i]]
    if (is.null(df) || length(df) == 0 || nrow(df) == 0) {
      return(NULL)
    }
    df$package <- res$package[i]
    return(df)
  })
  
  # Filter out NULL elements
  df_list <- df_list[!sapply(df_list, is.null)]
  
  if (length(df_list) == 0) {
    stop("No CRAN download records found for any package.")
  }
  
  downloads_df <- do.call(rbind, df_list)
  
  # Format dates (api uses "day" column) and aggregate by month
  monthly_df <- downloads_df %>%
    mutate(
      date = as.Date(day),
      month = floor_date(date, "month")
    ) %>%
    group_by(package, month) %>%
    summarize(downloads = sum(downloads), .groups = 'drop')
  
  # Create a clean premium plot matching the website aesthetics
  p <- ggplot(monthly_df, aes(x = month, y = downloads, color = package, group = package)) +
    geom_line(linewidth = 1.2, alpha = 0.85) +
    geom_point(size = 2.5, alpha = 0.9) +
    scale_color_manual(values = c(
      "iglm" = "#2f80ed",       # blue
      "bigergm" = "#27ae60",    # green
      "redeem" = "#e28743",     # orange/bronze
      "ergm.sign" = "#9b51e0"   # purple
    )) +
    theme_minimal(base_family = "sans") +
    labs(
      title = "CRAN Downloads Over Time",
      x = "Date",
      y = "Monthly Downloads",
      color = "Software"
    ) +
    theme(
      plot.title = element_text(face = "bold", size = 16, color = "#1d1d1f", hjust = 0),
      axis.title.x = element_text(face = "bold", size = 11, color = "#1d1d1f", margin = margin(t = 10)),
      axis.title.y = element_text(face = "bold", size = 11, color = "#1d1d1f", margin = margin(r = 10)),
      axis.text = element_text(size = 10, color = "#515154"),
      legend.title = element_text(face = "bold", size = 11, color = "#1d1d1f"),
      legend.text = element_text(size = 10, color = "#515154"),
      legend.position = "bottom",
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(color = "#e8e8ed"),
      plot.margin = margin(20, 20, 20, 20)
    )
  
  # Ensure the assets/images directory exists
  images_dir <- file.path(SITE_ROOT, "assets/images")
  dir.create(images_dir, showWarnings = FALSE, recursive = TRUE)
  
  dest_path <- file.path(images_dir, "software_downloads.png")
  
  # Save the plot
  ggsave(
    filename = dest_path,
    plot = p,
    width = 10,
    height = 5.5,
    dpi = 300,
    bg = "white"
  )
  
  message("Downloads chart generated and saved successfully to assets/images/software_downloads.png")
  
}, error = function(e) {
  stop(paste("Failed to generate downloads chart:", e$message))
})
