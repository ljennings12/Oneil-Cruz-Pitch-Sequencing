# Scraping Statcast Data

library(tidyverse)

# Access baseballr package:
install.packages('devtools')
devtools::install_github('BillPetti/baseballr')
library(baseballr)

# Credit to Jim Albert 
# Break 2022 season up into chunks to ensure we can grab 
# data without running into any connectivity issues

s1 <- scrape_statcast_savant_batter_all("2022-04-07", 
                                        "2022-04-11")
s2 <- scrape_statcast_savant_batter_all("2022-04-12", 
                                        "2022-04-15")
s3 <- scrape_statcast_savant_batter_all("2022-04-16", 
                                        "2022-04-22")
s4 <- scrape_statcast_savant_batter_all("2022-04-23", 
                                        "2022-04-29")
s5 <- scrape_statcast_savant_batter_all("2022-04-30", 
                                        "2022-05-06")
s6 <- scrape_statcast_savant_batter_all("2022-05-07", 
                                        "2022-05-13")
s7 <- scrape_statcast_savant_batter_all("2022-05-14", 
                                        "2022-05-20")
s8 <- scrape_statcast_savant_batter_all("2022-05-21", 
                                        "2022-05-27")
s9 <- scrape_statcast_savant_batter_all("2022-05-28", 
                                        "2022-06-03")
s10 <- scrape_statcast_savant_batter_all("2022-06-04", 
                                         "2022-06-10")
s11 <- scrape_statcast_savant_batter_all("2022-06-11", 
                                         "2022-06-17")
s12 <- scrape_statcast_savant_batter_all("2022-06-18", 
                                         "2022-06-24")
s13 <- scrape_statcast_savant_batter_all("2022-06-25", 
                                         "2022-07-01")
s14 <- scrape_statcast_savant_batter_all("2022-07-02", 
                                         "2022-07-08")
s15 <- scrape_statcast_savant_batter_all("2022-07-09", 
                                         "2022-07-15")
s16 <- scrape_statcast_savant_batter_all("2022-07-16", 
                                         "2022-07-22")
s17 <- scrape_statcast_savant_batter_all("2022-07-23", 
                                         "2022-07-29")
s18 <- scrape_statcast_savant_batter_all("2022-07-30", 
                                         "2022-08-05")
s19 <- scrape_statcast_savant_batter_all("2022-08-06", 
                                         "2022-08-12")
s20 <- scrape_statcast_savant_batter_all("2022-08-13", 
                                         "2022-08-19")
s21 <- scrape_statcast_savant_batter_all("2022-08-20", 
                                         "2022-08-26")
s22 <- scrape_statcast_savant_batter_all("2022-08-27", 
                                         "2022-09-02")
s23 <- scrape_statcast_savant_batter_all("2022-09-03", 
                                         "2022-09-09")
s24 <- scrape_statcast_savant_batter_all("2022-09-10", 
                                         "2022-09-16")
s25 <- scrape_statcast_savant_batter_all("2022-09-17", 
                                         "2022-09-23")
s26 <- scrape_statcast_savant_batter_all("2022-09-24", 
                                         "2022-09-30")
s27 <- scrape_statcast_savant_batter_all("2022-10-01", 
                                         "2022-11-01")
sc1 <- rbind(s1, s2, s3, s4, s5, s6, s7, s8, s9, s10,
             s11, s12, s13, s14)
sc2 <- rbind(s15, s16, s17, s18, s19, s20, s21,
             s22, s23, s24, s25, s26, s27)

statcast_2022 <- rbind(sc1, sc2)

write.csv(statcast_2022, "statcast_2022.csv")