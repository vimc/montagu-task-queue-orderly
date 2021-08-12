do_plot <- function(d, touchstone, touchstone_name) {
  barplot(setNames(d$number, d$name), las = 2,
          main = sprintf("%s - %s", touchstone, touchstone_name))
}
