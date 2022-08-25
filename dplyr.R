dataku <- flights
summary(dataku)
help(cbind)
dataku <- cbind(nomor = rownames(dataku), dataku)

baru <- filter(dataku, day>=25, month==8, origin=='JFK', dest=='PSE')
baru2 <- slice(baru, 3:9)
baru3 <- arrange(baru, arr_time)
pilih <- select(baru, day, origin, dest)
unik <- distinct(select(dataku, dest))

tambah <- mutate(baru, delay= dep_delay+arr_delay)
sampel <- sample_frac(baru, 0.3)

hasil <- dataku %>%  filter(origin=='JFK', dest=='PSE') %>% sample_n(40)

library(tidyr)
