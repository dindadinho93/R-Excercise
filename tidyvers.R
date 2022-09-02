library(tidyverse)

dt <- read.csv('D:/KULIAH/Machine Learning Full/ML Algorithms dataset/SocialNetworkAds.csv')
head(dt)

summary(dt)

dt %>% drop_na() %>% summary()

dt %>% filter(Gender == 'Female')

dt %>% select(Gender, Age) %>% filter(Age<30)

prcnt <- dt%>% mutate(percent = Age/100)

dt %>% group_by(Gender) %>% 
  summarize(mean_age = mean(Age)) %>%
  head()

dt %>% group_by(Gender) %>% 
  summarize(mean_age = mean(Age),
            min_age = min(Age)) %>%
  head()

dt %>% group_by(Gender) %>% 
  summarize(mean_salary = mean(EstimatedSalary),
            min_salay = min(EstimatedSalary)) %>%
  head()

dt %>% group_by(Gender) %>% 
  summarise(count = n()) %>%
  head()

dt %>% select(Gender, Age, EstimatedSalary) %>% arrange(desc(Age)) %>%
  head()

dt.prod <- dt %>% select(Gender, Age, EstimatedSalary) %>% 
  mutate(position = ifelse(Age>56,'Pensiun','produktif'))


ggplot(dt.prod, aes(x=Gender)) + geom_bar()

ggplot(dt.prod, aes(x=Gender, y=Age)) + geom_point()

ggplot(dt.prod, aes(x=Age, y=EstimatedSalary, color=Gender)) + geom_point()

ggplot(dt.prod, aes(x=Age, y=EstimatedSalary, color=position)) + geom_point()

dt.prod2 <- dt.prod %>% filter(EstimatedSalary<100000, position=='produktif')

ggplot(dt.prod2, aes(x=Age, y=EstimatedSalary, color=Gender)) + geom_point()

ggplot(dt.prod2, aes(x=Age, y=EstimatedSalary)) + geom_point() +facet_grid(~Gender)

ggplot(dt.prod2, aes(x=Age)) +geom_histogram(binwidth = 5)

ggplot(dt.prod2, aes(x=Age)) +geom_histogram(binwidth = 5) +facet_grid(~Gender)

boxplot(EstimatedSalary~Gender, data = dt.prod2)

dt.prod2 %>% mutate(ints = cut(Age, breaks=4)) %>%
  group_by(ints) %>% 
  summarise(mean.Salary = mean(EstimatedSalary))

dt.prod2 %>% mutate(ints = cut(Age, breaks=4)) %>%
  count(ints)
