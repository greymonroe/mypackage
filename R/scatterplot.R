#' Scatterplot using ggplot2
#'
#' This function creates a scatterplot using ggplot2 based on the provided data and variable names.
#'
#' @param data A data frame containing the data to be plotted. Example: iris.
#' @param xvar A character string specifying the column name for the x-axis. Example: "Sepal.Length".
#' @param yvar A character string specifying the column name for the y-axis. Example: "Sepal.Width".
#' @param colvar A character string specifying the column name for the color of the points.
#'               If NULL, all points will have the same color. Example: "Species".
#'
#' @return A ggplot2 scatterplot.
#' @examples
#' scatterplot(data = iris, xvar = "Sepal.Length", yvar = "Sepal.Width", colvar = "Species")
#'
#' @importFrom ggplot2 ggplot aes geom_point
#' @export
scatterplot <- function(data, xvar, yvar, colvar = NULL) {

  require(ggplot2)

  # Check if the provided column names exist in the data
  if (!xvar %in% names(data)) {
    stop(paste("Error: Column", xvar, "not found in data."))
  }

  if (!yvar %in% names(data)) {
    stop(paste("Error: Column", yvar, "not found in data."))
  }

  if (!is.null(colvar) && !colvar %in% names(data)) {
    stop(paste("Error: Column", colvar, "not found in data."))
  }

  ggplot(data, aes(x = get(xvar), y = get(yvar), col = if (!is.null(colvar)) get(colvar))) +
    geom_point()
}
