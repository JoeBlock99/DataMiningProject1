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


nac_por_dpto_2010 <- as.data.frame(dt_2010[3])
nac_por_dpto_2010$anio = 2010
nac_por_dpto_2011 <- as.data.frame(dt_2011[3])
nac_por_dpto_2011$anio = 2011
nac_por_dpto_2012 <- as.data.frame(dt_2012[3])
nac_por_dpto_2012$anio = 2012
nac_por_dpto_2013 <- as.data.frame(dt_2013[3])
nac_por_dpto_2013$anio = 2013
nac_por_dpto_2014 <- as.data.frame(dt_2014[3])
nac_por_dpto_2014$anio = 2014
nac_por_dpto_2015 <- as.data.frame(dt_2015[3])
nac_por_dpto_2015$anio = 2015
nac_por_dpto_2016 <- as.data.frame(dt_2016[3])
nac_por_dpto_2016$anio = 2016
nac_por_dpto_2017 <- as.data.frame(dt_2017[3])
nac_por_dpto_2017$anio = 2017
nac_por_dpto_2018 <- as.data.frame(dt_2018[3])
nac_por_dpto_2018$anio = 2018
nac_por_dpto_2019 <- as.data.frame(dt_2019[3])
nac_por_dpto_2019$anio = 2019

# R BIND
nac_por_dpto <- rbind(nac_por_dpto_2010, nac_por_dpto_2011, nac_por_dpto_2012, nac_por_dpto_2013, nac_por_dpto_2014, nac_por_dpto_2015, nac_por_dpto_2016, nac_por_dpto_2017, nac_por_dpto_2018, nac_por_dpto_2019)


nac_por_dpto_2010_edades_simples <- as.data.frame(dt_2010[4])
nac_por_dpto_2010_edades_simples$anio = 2010
nac_por_dpto_2011_edades_simples <- as.data.frame(dt_2011[4])
nac_por_dpto_2011_edades_simples$anio = 2011
nac_por_dpto_2012_edades_simples <- as.data.frame(dt_2012[4])
nac_por_dpto_2012_edades_simples$anio = 2012
nac_por_dpto_2013_edades_simples <- as.data.frame(dt_2013[4])
nac_por_dpto_2013_edades_simples$anio = 2013
nac_por_dpto_2014_edades_simples <- as.data.frame(dt_2014[4])
nac_por_dpto_2014_edades_simples$anio = 2014
nac_por_dpto_2015_edades_simples <- as.data.frame(dt_2015[4])
nac_por_dpto_2015_edades_simples$anio = 2015
nac_por_dpto_2016_edades_simples <- as.data.frame(dt_2016[4])
nac_por_dpto_2016_edades_simples$anio = 2016
nac_por_dpto_2017_edades_simples <- as.data.frame(dt_2017[4])
nac_por_dpto_2017_edades_simples$anio = 2017
nac_por_dpto_2018_edades_simples <- as.data.frame(dt_2018[4])
nac_por_dpto_2018_edades_simples$anio = 2018
nac_por_dpto_2019_edades_simples <- as.data.frame(dt_2019[4])
nac_por_dpto_2019_edades_simples$anio = 2019

# R Bind
nac_por_dpto_edades_simples <- rbind(nac_por_dpto_2010_edades_simples, nac_por_dpto_2011_edades_simples, nac_por_dpto_2012_edades_simples, nac_por_dpto_2013_edades_simples, nac_por_dpto_2014_edades_simples, nac_por_dpto_2015_edades_simples, nac_por_dpto_2016_edades_simples, nac_por_dpto_2017_edades_simples, nac_por_dpto_2018_edades_simples, nac_por_dpto_2019_edades_simples)

nac_por_dia_por_mes_2010 <- as.data.frame(dt_2010[5])
nac_por_dia_por_mes_2010$anio = 2010
nac_por_dia_por_mes_2011 <- as.data.frame(dt_2011[5])
nac_por_dia_por_mes_2011$anio = 2011
nac_por_dia_por_mes_2012 <- as.data.frame(dt_2012[5])
nac_por_dia_por_mes_2012$anio = 2012
nac_por_dia_por_mes_2013 <- as.data.frame(dt_2013[5])
nac_por_dia_por_mes_2013$anio = 2013
nac_por_dia_por_mes_2014 <- as.data.frame(dt_2014[5])
nac_por_dia_por_mes_2014$anio = 2014
nac_por_dia_por_mes_2015 <- as.data.frame(dt_2015[5])
nac_por_dia_por_mes_2015$anio = 2015
nac_por_dia_por_mes_2016 <- as.data.frame(dt_2016[5])
nac_por_dia_por_mes_2016$anio = 2016
nac_por_dia_por_mes_2017 <- as.data.frame(dt_2017[5])
nac_por_dia_por_mes_2017$anio = 2017
nac_por_dia_por_mes_2018 <- as.data.frame(dt_2018[5])
nac_por_dia_por_mes_2018$anio = 2018
nac_por_dia_por_mes_2019 <- as.data.frame(dt_2019[5])
nac_por_dia_por_mes_2019$anio = 2019

nac_por_dia_por_mes <- rbind(nac_por_dia_por_mes_2010, nac_por_dia_por_mes_2011, nac_por_dia_por_mes_2012, nac_por_dia_por_mes_2013, nac_por_dia_por_mes_2014, nac_por_dia_por_mes_2015, nac_por_dia_por_mes_2016, nac_por_dia_por_mes_2017, nac_por_dia_por_mes_2018, nac_por_dia_por_mes_2019)


nac_por_estado_civil_2010 <- as.data.frame(dt_2010[6])
nac_por_estado_civil_2010$anio = 2010
nac_por_estado_civil_2011 <- as.data.frame(dt_2011[6])
nac_por_estado_civil_2011$anio = 2011
nac_por_estado_civil_2012 <- as.data.frame(dt_2012[6])
nac_por_estado_civil_2012$anio = 2012
nac_por_estado_civil_2013 <- as.data.frame(dt_2013[6])
nac_por_estado_civil_2013$anio = 2013
nac_por_estado_civil_2014 <- as.data.frame(dt_2014[6])
nac_por_estado_civil_2014$anio = 2014
nac_por_estado_civil_2015 <- as.data.frame(dt_2015[6])
nac_por_estado_civil_2015$anio = 2015
nac_por_estado_civil_2016 <- as.data.frame(dt_2016[6])
nac_por_estado_civil_2016$anio = 2016
nac_por_estado_civil_2017 <- as.data.frame(dt_2017[6])
nac_por_estado_civil_2017$anio = 2017
nac_por_estado_civil_2018 <- as.data.frame(dt_2018[6])
nac_por_estado_civil_2018$anio = 2018
nac_por_estado_civil_2019 <- as.data.frame(dt_2019[6])
nac_por_estado_civil_2019$anio = 2019

# R Bind
nac_por_estado_civil <- rbind(nac_por_estado_civil_2010, nac_por_estado_civil_2011, nac_por_estado_civil_2012, nac_por_estado_civil_2013, nac_por_estado_civil_2014, nac_por_estado_civil_2015, nac_por_estado_civil_2016, nac_por_estado_civil_2017, nac_por_estado_civil_2018, nac_por_estado_civil_2019)


nac_por_estado_civil_por_edad_2010 <- as.data.frame(dt_2010[7])
nac_por_estado_civil_por_edad_2010$anio = 2010
nac_por_estado_civil_por_edad_2011 <- as.data.frame(dt_2011[7])
nac_por_estado_civil_por_edad_2011$anio = 2011
nac_por_estado_civil_por_edad_2012 <- as.data.frame(dt_2012[7])
nac_por_estado_civil_por_edad_2012$anio = 2012
nac_por_estado_civil_por_edad_2013 <- as.data.frame(dt_2013[7])
nac_por_estado_civil_por_edad_2013$anio = 2013
nac_por_estado_civil_por_edad_2014 <- as.data.frame(dt_2014[7])
nac_por_estado_civil_por_edad_2014$anio = 2014
nac_por_estado_civil_por_edad_2015 <- as.data.frame(dt_2015[7])
nac_por_estado_civil_por_edad_2015$anio = 2015
nac_por_estado_civil_por_edad_2016 <- as.data.frame(dt_2016[7])
nac_por_estado_civil_por_edad_2016$anio = 2016
nac_por_estado_civil_por_edad_2017 <- as.data.frame(dt_2017[7])
nac_por_estado_civil_por_edad_2017$anio = 2017
nac_por_estado_civil_por_edad_2018 <- as.data.frame(dt_2018[7])
nac_por_estado_civil_por_edad_2018$anio = 2018
nac_por_estado_civil_por_edad_2019 <- as.data.frame(dt_2019[7])
nac_por_estado_civil_por_edad_2019$anio = 2019

# R Bind
nac_por_estado_civil_por_edad <- rbind(nac_por_estado_civil_por_edad_2010, nac_por_estado_civil_por_edad_2011, nac_por_estado_civil_por_edad_2012, nac_por_estado_civil_por_edad_2013, nac_por_estado_civil_por_edad_2014, nac_por_estado_civil_por_edad_2015, nac_por_estado_civil_por_edad_2016, nac_por_estado_civil_por_edad_2017, nac_por_estado_civil_por_edad_2018, nac_por_estado_civil_por_edad_2019)


nac_por_estado_civil_padre_por_edad_2010 <- as.data.frame(dt_2010[8])
nac_por_estado_civil_padre_por_edad_2010$anio = 2010
nac_por_estado_civil_padre_por_edad_2011 <- as.data.frame(dt_2011[8])
nac_por_estado_civil_padre_por_edad_2011$anio = 2011
nac_por_estado_civil_padre_por_edad_2012 <- as.data.frame(dt_2012[8])
nac_por_estado_civil_padre_por_edad_2012$anio = 2012
nac_por_estado_civil_padre_por_edad_2013 <- as.data.frame(dt_2013[8])
nac_por_estado_civil_padre_por_edad_2013$anio = 2013
nac_por_estado_civil_padre_por_edad_2014 <- as.data.frame(dt_2014[8])
nac_por_estado_civil_padre_por_edad_2014$anio = 2014
nac_por_estado_civil_padre_por_edad_2015 <- as.data.frame(dt_2015[8])
nac_por_estado_civil_padre_por_edad_2015$anio = 2015
nac_por_estado_civil_padre_por_edad_2016 <- as.data.frame(dt_2016[8])
nac_por_estado_civil_padre_por_edad_2016$anio = 2016
nac_por_estado_civil_padre_por_edad_2017 <- as.data.frame(dt_2017[8])
nac_por_estado_civil_padre_por_edad_2017$anio = 2017
nac_por_estado_civil_padre_por_edad_2018 <- as.data.frame(dt_2018[8])
nac_por_estado_civil_padre_por_edad_2018$anio = 2018
nac_por_estado_civil_padre_por_edad_2019 <- as.data.frame(dt_2019[8])
nac_por_estado_civil_padre_por_edad_2019$anio = 2019

# R Bind
nac_por_estado_civil_padre_por_edad <- rbind(nac_por_estado_civil_padre_por_edad_2010, nac_por_estado_civil_padre_por_edad_2011, nac_por_estado_civil_padre_por_edad_2012, nac_por_estado_civil_padre_por_edad_2013, nac_por_estado_civil_padre_por_edad_2014, nac_por_estado_civil_padre_por_edad_2015, nac_por_estado_civil_padre_por_edad_2016, nac_por_estado_civil_padre_por_edad_2017, nac_por_estado_civil_padre_por_edad_2018, nac_por_estado_civil_padre_por_edad_2019)


nac_vivos_muertos_por_dpto_2010 <- as.data.frame(dt_2010[11])
nac_vivos_muertos_por_dpto_2010$anio = 2010
nac_vivos_muertos_por_dpto_2011 <- as.data.frame(dt_2011[11])
nac_vivos_muertos_por_dpto_2011$anio = 2011
nac_vivos_muertos_por_dpto_2012 <- as.data.frame(dt_2012[11])
nac_vivos_muertos_por_dpto_2012$anio = 2012
nac_vivos_muertos_por_dpto_2013 <- as.data.frame(dt_2013[11])
nac_vivos_muertos_por_dpto_2013$anio = 2013
nac_vivos_muertos_por_dpto_2014 <- as.data.frame(dt_2014[11])
nac_vivos_muertos_por_dpto_2014$anio = 2014
nac_vivos_muertos_por_dpto_2015 <- as.data.frame(dt_2015[11])
nac_vivos_muertos_por_dpto_2015$anio = 2015
nac_vivos_muertos_por_dpto_2016 <- as.data.frame(dt_2016[11])
nac_vivos_muertos_por_dpto_2016$anio = 2016
nac_vivos_muertos_por_dpto_2017 <- as.data.frame(dt_2017[11])
nac_vivos_muertos_por_dpto_2017$anio = 2017
nac_vivos_muertos_por_dpto_2018 <- as.data.frame(dt_2018[11])
nac_vivos_muertos_por_dpto_2018$anio = 2018
nac_vivos_muertos_por_dpto_2018$Múltiples = 0
nac_vivos_muertos_por_dpto_2019 <- as.data.frame(dt_2019[11])
nac_vivos_muertos_por_dpto_2019$anio = 2019
nac_vivos_muertos_por_dpto_2019$Múltiples = 0

# R Bind
nac_vivos_muertos_por_dpto <- rbind(nac_vivos_muertos_por_dpto_2010, nac_vivos_muertos_por_dpto_2011, nac_vivos_muertos_por_dpto_2012, nac_vivos_muertos_por_dpto_2013, nac_vivos_muertos_por_dpto_2014, nac_vivos_muertos_por_dpto_2015, nac_vivos_muertos_por_dpto_2016, nac_vivos_muertos_por_dpto_2017, nac_vivos_muertos_por_dpto_2018, nac_vivos_muertos_por_dpto_2019)

