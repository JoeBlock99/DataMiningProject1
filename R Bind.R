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

# Nacimientos por departamento de residencia de la madre, según sexo y peso del niño(a) al nacer, año 2010

nac_depto_sexo_peso_2010 <- as.data.frame(dt_2010[12])
nac_depto_sexo_peso_2010$anio = 2010
nac_depto_sexo_peso_2010 <- nac_depto_sexo_peso_2010 %>% rename(Hombres = Niños, Mujeres = Niñas)
nac_depto_sexo_peso_2011 <- as.data.frame(dt_2011[12])
nac_depto_sexo_peso_2011$anio = 2011
nac_depto_sexo_peso_2011 <- nac_depto_sexo_peso_2011 %>% rename(Hombres = Niños, Mujeres = Niñas)
nac_depto_sexo_peso_2012 <- as.data.frame(dt_2012[12])
nac_depto_sexo_peso_2012$anio = 2012
nac_depto_sexo_peso_2012 <- nac_depto_sexo_peso_2012 %>% rename(Hombres = Niños, Mujeres = Niñas)
nac_depto_sexo_peso_2013 <- as.data.frame(dt_2013[12])
nac_depto_sexo_peso_2013$anio = 2013
nac_depto_sexo_peso_2014 <- as.data.frame(dt_2014[12])
nac_depto_sexo_peso_2014$anio = 2014
nac_depto_sexo_peso_2015 <- as.data.frame(dt_2015[12])
nac_depto_sexo_peso_2015$anio = 2015
nac_depto_sexo_peso_2016 <- as.data.frame(dt_2016[12])
nac_depto_sexo_peso_2016$anio = 2016
nac_depto_sexo_peso_2017 <- as.data.frame(dt_2017[12])
nac_depto_sexo_peso_2017$anio = 2017
nac_depto_sexo_peso_2018 <- as.data.frame(dt_2018[12])
nac_depto_sexo_peso_2018$anio = 2018
nac_depto_sexo_peso_2019 <- as.data.frame(dt_2019[12])
nac_depto_sexo_peso_2019$anio = 2019



#R Bind
nac_depto_sexo_peso <- rbind(nac_depto_sexo_peso_2010, nac_depto_sexo_peso_2011, nac_depto_sexo_peso_2012, nac_depto_sexo_peso_2013, nac_depto_sexo_peso_2014, nac_depto_sexo_peso_2015, nac_depto_sexo_peso_2016, nac_depto_sexo_peso_2017, nac_depto_sexo_peso_2018, nac_depto_sexo_peso_2019)


#Nacimientos por grupos de edad de la madre, según sexo y peso del niño(a) al nacer

nac_edad_madre_sexo_peso_2010 <- as.data.frame(dt_2010[13])
nac_edad_madre_sexo_peso_2010$anio = 2010
nac_edad_madre_sexo_peso_2010 <- nac_edad_madre_sexo_peso_2010 %>% rename(Hombres = Niño, Mujeres = Niña)
nac_edad_madre_sexo_peso_2011 <- as.data.frame(dt_2011[13])
nac_edad_madre_sexo_peso_2011$anio = 2011
nac_edad_madre_sexo_peso_2011 <- nac_edad_madre_sexo_peso_2011 %>% rename(Hombres = Niño, Mujeres = Niña)
nac_edad_madre_sexo_peso_2012 <- as.data.frame(dt_2012[13])
nac_edad_madre_sexo_peso_2012$anio = 2012
nac_edad_madre_sexo_peso_2012 <- nac_edad_madre_sexo_peso_2012 %>% rename(Hombres = Niño, Mujeres = Niña)
nac_edad_madre_sexo_peso_2013 <- as.data.frame(dt_2013[13])
nac_edad_madre_sexo_peso_2013$anio = 2013
nac_edad_madre_sexo_peso_2014 <- as.data.frame(dt_2014[13])
nac_edad_madre_sexo_peso_2014$anio = 2014
nac_edad_madre_sexo_peso_2015 <- as.data.frame(dt_2015[13])
nac_edad_madre_sexo_peso_2015$anio = 2015
nac_edad_madre_sexo_peso_2016 <- as.data.frame(dt_2016[13])
nac_edad_madre_sexo_peso_2016$anio = 2016
nac_edad_madre_sexo_peso_2017 <- as.data.frame(dt_2017[13])
nac_edad_madre_sexo_peso_2017$anio = 2017
nac_edad_madre_sexo_peso_2018 <- as.data.frame(dt_2018[13])
nac_edad_madre_sexo_peso_2018$anio = 2018
nac_edad_madre_sexo_peso_2019 <- as.data.frame(dt_2019[13])
nac_edad_madre_sexo_peso_2019$anio = 2019

#R Bind
nac_edad_madre_sexo_peso <- rbind(nac_edad_madre_sexo_peso_2010, nac_edad_madre_sexo_peso_2011, nac_edad_madre_sexo_peso_2012, nac_edad_madre_sexo_peso_2013, nac_edad_madre_sexo_peso_2014, nac_edad_madre_sexo_peso_2015, nac_edad_madre_sexo_peso_2016, nac_edad_madre_sexo_peso_2017, nac_edad_madre_sexo_peso_2018, nac_edad_madre_sexo_peso_2019)

# Nacimientos por grupos de edad de la madre, según departamento y municipio de su residencia, año 2010

nac_edad_madre_departamento_municipio_2010 <- as.data.frame(dt_2010[14])
nac_edad_madre_departamento_municipio_2010$anio = 2010
nac_edad_madre_departamento_municipio_2011 <- as.data.frame(dt_2011[14])
nac_edad_madre_departamento_municipio_2011$anio = 2011
nac_edad_madre_departamento_municipio_2012 <- as.data.frame(dt_2012[14])
nac_edad_madre_departamento_municipio_2012$anio = 2012
nac_edad_madre_departamento_municipio_2013 <- as.data.frame(dt_2013[14])
nac_edad_madre_departamento_municipio_2013$anio = 2013
nac_edad_madre_departamento_municipio_2014 <- as.data.frame(dt_2014[14])
nac_edad_madre_departamento_municipio_2014$anio = 2014
nac_edad_madre_departamento_municipio_2015 <- as.data.frame(dt_2015[14])
nac_edad_madre_departamento_municipio_2015$anio = 2015
nac_edad_madre_departamento_municipio_2016 <- as.data.frame(dt_2016[14])
nac_edad_madre_departamento_municipio_2016$anio = 2016
nac_edad_madre_departamento_municipio_2017 <- as.data.frame(dt_2017[14])
nac_edad_madre_departamento_municipio_2017$anio = 2017
nac_edad_madre_departamento_municipio_2018 <- as.data.frame(dt_2018[14])
nac_edad_madre_departamento_municipio_2018$anio = 2018
nac_edad_madre_departamento_municipio_2019 <- as.data.frame(dt_2019[14])
nac_edad_madre_departamento_municipio_2019$anio = 2019

#R Bind
nac_edad_madre_departamento_municipio <- rbind(nac_edad_madre_departamento_municipio_2010, nac_edad_madre_departamento_municipio_2011, nac_edad_madre_departamento_municipio_2012, nac_edad_madre_departamento_municipio_2013, nac_edad_madre_departamento_municipio_2014, nac_edad_madre_departamento_municipio_2015, nac_edad_madre_departamento_municipio_2016, nac_edad_madre_departamento_municipio_2017, nac_edad_madre_departamento_municipio_2018, nac_edad_madre_departamento_municipio_2019)

# Nacimientos por grupos de edad de la madre, según grandes grupos ocupacionales de la madre

nac_edad_madre_ocupacion_2010 <- as.data.frame(dt_2010[15])
nac_edad_madre_ocupacion_2010$anio = 2010
nac_edad_madre_ocupacion_2011 <- as.data.frame(dt_2011[15])
nac_edad_madre_ocupacion_2011$anio = 2011
nac_edad_madre_ocupacion_2012 <- as.data.frame(dt_2012[15])
nac_edad_madre_ocupacion_2012$anio = 2012
nac_edad_madre_ocupacion_2013 <- as.data.frame(dt_2013[15])
nac_edad_madre_ocupacion_2013$anio = 2013
nac_edad_madre_ocupacion_2014 <- as.data.frame(dt_2014[15])
nac_edad_madre_ocupacion_2014$anio = 2014
nac_edad_madre_ocupacion_2015 <- as.data.frame(dt_2015[15])
nac_edad_madre_ocupacion_2015$anio = 2015
nac_edad_madre_ocupacion_2016 <- as.data.frame(dt_2016[15])
nac_edad_madre_ocupacion_2016$anio = 2016
nac_edad_madre_ocupacion_2017 <- as.data.frame(dt_2017[15])
nac_edad_madre_ocupacion_2017$anio = 2017
nac_edad_madre_ocupacion_2018 <- as.data.frame(dt_2018[15])
nac_edad_madre_ocupacion_2018$anio = 2018
nac_edad_madre_ocupacion_2019 <- as.data.frame(dt_2019[15])
nac_edad_madre_ocupacion_2019$anio = 2019

#R Bind
nac_edad_madre_ocupacion <- rbind(nac_edad_madre_ocupacion_2010, nac_edad_madre_ocupacion_2011, nac_edad_madre_ocupacion_2012, nac_edad_madre_ocupacion_2013, nac_edad_madre_ocupacion_2014, nac_edad_madre_ocupacion_2015, nac_edad_madre_ocupacion_2016, nac_edad_madre_ocupacion_2017, nac_edad_madre_ocupacion_2018, nac_edad_madre_ocupacion_2019)

# Nacimientos por edad de la madre, según departamento de residencia, área geográfica de ocurrencia, y grupo étnico de la madre

nac_edad_madre_depto_area_etnia_2010 <- as.data.frame(dt_2010[16])
nac_edad_madre_depto_area_etnia_2010$anio = 2010
nac_edad_madre_depto_area_etnia_2010$Área.geográfica <- NULL
nac_edad_madre_depto_area_etnia_2010 <- nac_edad_madre_depto_area_etnia_2010 %>% rename(Pueblo.de.pertenencia.de.la.madre = Grupo.étnico)
nac_edad_madre_depto_area_etnia_2011 <- as.data.frame(dt_2011[16])
nac_edad_madre_depto_area_etnia_2011$anio = 2011
nac_edad_madre_depto_area_etnia_2011$Área.geográfica <- NULL
nac_edad_madre_depto_area_etnia_2011 <- nac_edad_madre_depto_area_etnia_2011 %>% rename(Pueblo.de.pertenencia.de.la.madre = Grupo.étnico)
nac_edad_madre_depto_area_etnia_2012 <- as.data.frame(dt_2012[16])
nac_edad_madre_depto_area_etnia_2012$anio = 2012
nac_edad_madre_depto_area_etnia_2012 <- nac_edad_madre_depto_area_etnia_2012 %>% rename(Pueblo.de.pertenencia.de.la.madre = Grupo.étnico)
nac_edad_madre_depto_area_etnia_2013 <- as.data.frame(dt_2013[16])
nac_edad_madre_depto_area_etnia_2013$anio = 2013
nac_edad_madre_depto_area_etnia_2014 <- as.data.frame(dt_2014[16])
nac_edad_madre_depto_area_etnia_2014$anio = 2014
nac_edad_madre_depto_area_etnia_2015 <- as.data.frame(dt_2015[16])
nac_edad_madre_depto_area_etnia_2015$anio = 2015
nac_edad_madre_depto_area_etnia_2016 <- as.data.frame(dt_2016[16])
nac_edad_madre_depto_area_etnia_2016$anio = 2016
nac_edad_madre_depto_area_etnia_2017 <- as.data.frame(dt_2017[16])
nac_edad_madre_depto_area_etnia_2017$anio = 2017
nac_edad_madre_depto_area_etnia_2018 <- as.data.frame(dt_2018[16])
nac_edad_madre_depto_area_etnia_2018$anio = 2018
nac_edad_madre_depto_area_etnia_2018 <- nac_edad_madre_depto_area_etnia_2018 %>% rename(Departamento.de.ocurrencia = Departamento.de.residencia)
nac_edad_madre_depto_area_etnia_2019 <- as.data.frame(dt_2019[16])
nac_edad_madre_depto_area_etnia_2019$anio = 2019
nac_edad_madre_depto_area_etnia_2019 <- nac_edad_madre_depto_area_etnia_2019 %>% rename(Departamento.de.ocurrencia = Departamento.de.residencia)

#R Bind
nac_edad_madre_depto_area_etnia <- rbind(nac_edad_madre_depto_area_etnia_2010, nac_edad_madre_depto_area_etnia_2011, nac_edad_madre_depto_area_etnia_2012, nac_edad_madre_depto_area_etnia_2013, nac_edad_madre_depto_area_etnia_2014, nac_edad_madre_depto_area_etnia_2015, nac_edad_madre_depto_area_etnia_2016, nac_edad_madre_depto_area_etnia_2017, nac_edad_madre_depto_area_etnia_2018, nac_edad_madre_depto_area_etnia_2019)

# Nacimientos por tipo de asistencia recibida, según departamento y municipio de residencia de la madre

nac_asis_2010 <- as.data.frame(dt_2010[17])
nac_asis_2010$anio = 2010
nac_asis_2010$Ignorado = 0
nac_asis_2011 <- as.data.frame(dt_2011[17])
nac_asis_2011$anio = 2011
nac_asis_2011$Ignorado = 0
nac_asis_2012 <- as.data.frame(dt_2012[17])
nac_asis_2012$anio = 2012
nac_asis_2012$Ignorado = 0
nac_asis_2013 <- as.data.frame(dt_2013[17])
nac_asis_2013$anio = 2013
nac_asis_2013$Ignorado = 0
nac_asis_2014 <- as.data.frame(dt_2014[17])
nac_asis_2014$anio = 2014
nac_asis_2014$Ignorado = 0
nac_asis_2015 <- as.data.frame(dt_2015[17])
nac_asis_2015$anio = 2015
nac_asis_2015$Ignorado = 0
nac_asis_2016 <- as.data.frame(dt_2016[17])
nac_asis_2016$anio = 2016
nac_asis_2016$Ignorado = 0
nac_asis_2017 <- as.data.frame(dt_2017[17])
nac_asis_2017$anio = 2017
nac_asis_2018 <- as.data.frame(dt_2018[17])
nac_asis_2018$anio = 2018
nac_asis_2019 <- as.data.frame(dt_2019[17])
nac_asis_2019$anio = 2019

#R Bind
nac_asis <- rbind(nac_asis_2010, nac_asis_2011, nac_asis_2012, nac_asis_2013, nac_asis_2014, nac_asis_2015, nac_asis_2016, nac_asis_2017, nac_asis_2018, nac_asis_2019)