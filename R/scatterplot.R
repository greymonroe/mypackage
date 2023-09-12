#' Scatterplot using ggplot2
#'
#' This function creates a scatterplot using ggplot2 based on the provided data and variable names.
#'
#' @param data A data frame containing the data to be plotted. Example: iris.
#' @param xvar A character string specifying the column name for the x-axis. Example: "Sepal.Length".
#' @param yvar A character string specifying the column name for the y-axis. Example: "Sepal.Width".
#' @export
#'
#' @return A ggplot2 scatterplot.
#' @examples
#' scatterplot(data = iris, xvar = "Sepal.Length", yvar = "Sepal.Width")
#'
#' @importFrom ggplot2 ggplot aes geom_point


scatterplot <- function(data, xvar, yvar) {

  require(ggplot2)

  ggplot(data, aes(x = get(xvar), y = get(yvar))) +
    geom_point()
}
