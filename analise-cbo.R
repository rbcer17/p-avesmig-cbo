dadosforr= Forrageamento_Praça_dos_Cristais_e_C_O_
dadosforr$sp= as.factor(dadosforr$Espécie)
summary (dadosforr)
dadosforr$dia= as.factor(dadosforr$`Dia de Observaç??o`)
dadosforr$local= as.factor(dadosforr$`Área de Estudo`)
library(car)
recode(dadosforr$sp,  Príncipe (Pyrocephalus rubinus)  = )
