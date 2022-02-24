library("sas7bdat")
library("tidyr")
duom = read.sas7bdat("C:/prog/duomm/donate.sas7bdat")
duom2 = pivot_longer(duom, names_to = "Quarter",
                     values_to = "donate_rate",
                     cols = -ID)
duom2 
duom2_No_NaN = na.omit(duom2)
duom2_No_NaN #panaikintos NaN turinèios eilutës

