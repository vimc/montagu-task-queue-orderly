set.seed(1)
id <- ids::adjective_animal(20)
dat <- data.frame(id = seq_along(id),
                  name = id,
                  number = stats::runif(length(id)))

dat$number <- dat$number * 1.2
write.csv(dat, "summary.csv", row.names = TRUE)

png("graph.png")
par(mar = c(15, 4, .5, .5))
do_plot(dat, touchstone, touchstone_name)
dev.off()
