library(tidyverse)
library(readxl)

# Load Data from xls files

dt_2010 <- excel_sheets("Data/2010Nacimientos.xls") %>% map(~read_xls("Data/2010Nacimientos.xls", .))
dt_2011 <- excel_sheets("Data/2011Nacimientos.xls") %>% map(~read_xls("Data/2011Nacimientos.xls", .))
dt_2012 <- excel_sheets("Data/2012Nacimientos.xls") %>% map(~read_xls("Data/2012Nacimientos.xls", .))
dt_2013 <- excel_sheets("Data/2013Nacimientos.xls") %>% map(~read_xls("Data/2013Nacimientos.xls", .))
dt_2014 <- excel_sheets("Data/2014Nacimientos.xls") %>% map(~read_xls("Data/2014Nacimientos.xls", .))
dt_2015 <- excel_sheets("Data/2015Nacimientos.xls") %>% map(~read_xls("Data/2015Nacimientos.xls", .))
dt_2016 <- excel_sheets("Data/2016Nacimientos.xlsx") %>% map(~read_xlsx("Data/2016Nacimientos.xlsx", .))
dt_2017 <- excel_sheets("Data/2017Nacimientos.xlsx") %>% map(~read_xlsx("Data/2017Nacimientos.xlsx", .))
dt_2018 <- excel_sheets("Data/2018Nacimientos.xlsx") %>% map(~read_xlsx("Data/2018Nacimientos.xlsx", .))
dt_2019 <- excel_sheets("Data/2019Nacimientos.xlsx") %>% map(~read_xlsx("Data/2019Nacimientos.xlsx", .))

dpto_res_ocu_2010 <- as.data.frame(dt_2010[2])
dpto_res_ocu_2010$anio = 2010
dpto_res_ocu_2011<- as.data.frame(dt_2011[2])
dpto_res_ocu_2011$anio = 2011
dpto_res_ocu_2012 <- as.data.frame(dt_2012[2])
dpto_res_ocu_2012$anio = 2012
dpto_res_ocu_2013<- as.data.frame(dt_2013[2])
dpto_res_ocu_2013$anio = 2013
dpto_res_ocu_2014 <- as.data.frame(dt_2014[2])
dpto_res_ocu_2014$anio = 2014
dpto_res_ocu_2015<- as.data.frame(dt_2015[2])
dpto_res_ocu_2015$anio = 2015
dpto_res_ocu_2016 <- as.data.frame(dt_2016[2])
dpto_res_ocu_2016$anio = 2016
dpto_res_ocu_2017<- as.data.frame(dt_2017[2])
dpto_res_ocu_2017$anio = 2017
dpto_res_ocu_2018 <- as.data.frame(dt_2018[2])
dpto_res_ocu_2018$anio = 2018
dpto_res_ocu_2019<- as.data.frame(dt_2019[2])
dpto_res_ocu_2019$anio = 2019


# R BIND Sheet Depto. residencia y ocurrencia
dpto_res_ocu <- rbind(dpto_res_ocu_2010, dpto_res_ocu_2011, dpto_res_ocu_2012, dpto_res_ocu_2013, dpto_res_ocu_2014, dpto_res_ocu_2015, dpto_res_ocu_2016, dpto_res_ocu_2017, dpto_res_ocu_2018, dpto_res_ocu_2019)


as.data.frame(dt_2010[3])[-c(1),]
