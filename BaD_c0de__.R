

# This is bad code

# it works, but it's bad



### Make it better






## Make dataframe

dat = data.frame(x = c(1:10),
                 y = c(seq(6,60,6)), treated = c('trt','untrt','ctr','untrt','trt','ctr','trt','trt','ctr','trt'))

install.packages('dplyr')
dat2 = dplyr::mutate(dat, z = x*y)

library(dplyr)
dat_3 = dat2 |> group_by(treated) %>% summarise(z_mean = mean(z)) |> ungroup()





# Date: 03/04/2025

install.packages('ggplot2')
library(ggplot2)

## make a plot? cool it works
ggplot(data = dat2, aes(x = treated, y = z)) +
  geom_boxplot(aes(fill = treated))



