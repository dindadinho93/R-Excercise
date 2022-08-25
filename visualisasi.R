library(ggplot2)

dataku <- mtcars

ggplot(data = mtcars, aes(x=drat, y=wt)) +geom_point() + facet_grid(cyl~.) +
  stat_sum() + coord_cartesian(xlim = c(2.5,4.5)) + theme_bw()

# Movies Histogram
library(ggplot2movies)

data.movies <- movies
rat <- ggplot(data = movies, aes(x=rating)) + geom_histogram(binwidth = 2, color='red',
                                                      fill='red')
rat + xlab('Rating Film') +ylab('Freq.') + ggtitle('Rating Film') +
  theme(plot.title = element_text(hjust = 0.5))

data.mpg <- mpg
mp <- ggplot(data = mpg, aes(x=class)) + geom_bar()
mp + geom_bar(color='red')
