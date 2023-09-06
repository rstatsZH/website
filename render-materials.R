# load packages ----------------------------------------------------------------

library(fs)
library(tidyverse)
library(rmarkdown)
library(xaringan)

# non-xaringan -----------------------------------------------------------------

rmds <- dir_info(recurse = 3, glob = "_posts/*.Rmd") %>% 
  filter(!str_detect(path, "slides")) %>%
  pull(path)

walk(rmds, render)

# xaringan ---------------------------------------------------------------------

xaringans <- dir_info(recurse = 3, glob = "slides/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  filter(!str_detect(path, "e1_d06-2")) |> 
  filter(!str_detect(path, "e1_d99")) |> 
  pull(path)

walk(xaringans, render)

walk(xaringans, pagedown::chrome_print)
