dadosforr= forrag_princ_btv_chap_cbo_certo_mudado
dadosforr$sp= as.factor(dadosforr$Espécie)
summary (dadosforr)
dadosforr$sp= as.factor(dadosforr$sp)
dadosforr$site= as.factor(dadosforr$site)
dadosforr$diaseq = as.factor(dadosforr$diaseq)
boxplot( alturapolm ~ sp, data=dadosforr)
summary (aov(alturapolm ~ sp, data=dadosforr))
kruskal.test(alturapolm ~ sp , data = dadosforr)
dadosprinc <- dadosforr[dadosforr$sp == "p", ]  
kruskal.test(alturapolm ~ site , data = dadosprinc)
boxplot( alturapolm ~ site, data=dadosprinc)
boxplot( altforrm ~ site, data=dadosprinc)
boxplot( altforrm ~ sp, data=dadosforr)
dadoscristais <- dadosforr[dadosforr$site == "pc", ]
boxplot( alturapolm ~ sp, data=dadoscristais)
boxplot( altforrm ~ sp, data=dadoscristais)
