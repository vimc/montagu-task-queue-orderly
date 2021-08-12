set.seed(1)
id <- ids::adjective_animal(20)
dat <- data.frame(id = seq_along(id),
                  name = id,
                  number = stats::runif(length(id)))

png("mygraph.png")
par(mar = c(15, 4, .5, .5))
barplot(setNames(dat$number, dat$name), las = 2,
        main = sprintf("%s - %s", touchstone, touchstone_name))
dev.off()
