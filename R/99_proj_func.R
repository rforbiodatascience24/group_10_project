# SummaryStatistics function that summarize the minimum, maximum, mean and median of a variable
SummaryStatistics <- function(dataframe, variable) {
  dataframe |>
    summarize(
      minimum = min({{variable}}, na.rm = TRUE),
      maximum = max({{variable}}, na.rm = TRUE),
      mean = mean({{variable}}, na.rm = TRUE),
      median = median({{variable}}, na.rm = TRUE)
    )
}
