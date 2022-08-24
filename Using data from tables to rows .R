# Converting data from tables to rows 
### make sure to install all the packages below. 
pacman::p_load(datasets, pacman,MASS, tidyverse)

## UCBAdmission dataset 
?UCBAdmissions
str(UCBAdmissions)
glimpse(UCBAdmissions)
view(UCBAdmissions)


admissions <- UCBAdmissions %>%
  as_tibble()%>%
  uncount(n) %>%
  print()

### You can also useonly one line command for this 
admissions <- UCBAdmissions %>% as_tibble() %>% uncount(n) %>% print()

### another aexample 
data <- HairEyeColor %>% as_tibble() %>% uncount(n) %>% 
  mutate_all(as_factor) %>% mutate_all(fct_infreq) %>% print()
view(data)
