dadosforr= forrag_princ_btv_chap_cbo_certo_mudado
dadosforr$sp= as.factor(dadosforr$sp)
summary (dadosforr)
#
#
dadosforr$sp= as.factor(dadosforr$sp)
dadosforr$site= as.factor(dadosforr$site)
dadosforr$diaseq = as.factor(dadosforr$diaseq)
boxplot( alturapolm ~ sp, data=dadosforr)
summary (aov(alturapolm ~ sp, data=dadosforr))
kruskal.test(alturapolm ~ sp , data = dadosforr)
dadosprinc <- dadosforr[dadosforr$sp == "p", ]  
kruskal.test(alturapolm ~ site , data = dadosprinc)
kruskal.test(altforrm ~ site , data = dadosprinc)
boxplot( alturapolm ~ site, data=dadosprinc)
boxplot( altforrm ~ site, data=dadosprinc)
boxplot( altforrm ~ sp, data=dadosforr)
dadoscristais <- dadosforr[dadosforr$site == "pc", ]
boxplot( alturapolm ~ sp, data=dadoscristais)
boxplot( altforrm ~ sp, data=dadoscristais)

#comparar medias altura forrage entre sp
tapply(dadosforr$altforrm, dadosforr$sp, summary)
#agora o desvio padrao
tapply(dadosforr$altforrm, dadosforr$sp, sd, na.rm=TRUE)
#
#comparar medias altura forrage entre sp cristais
tapply(dadoscristais$altforrm, dadoscristais$sp, summary)
#agora o desvio padrao
tapply(dadoscristais$altforrm, dadoscristais$sp, sd, na.rm=TRUE)
#
#comparar medias altura poleiro entre sp
tapply(dadosforr$alturapolm, dadosforr$sp, summary)
#agora o desvio padrao
tapply(dadosforr$alturapolm, dadosforr$sp, sd,na.rm=TRUE)
#
#nested analysis of variance para altura forrageio nos dois sites ambas sp
library(nlme)
anovforr <- lme(altforrm ~ sp, random = ~1 | diaseq, dadosforr, na.action=na.exclude, method = "REML")
summary (anovforr)
anova(anovforr)
plot(anovforr)
#analise dos dados anova  so praca dos cristais
anovforrcris <- lme(altforrm ~ sp, random = ~1 | diaseq, dadoscristais, na.action=na.exclude, method = "REML")
summary (anovforrcris)

#
# tentei nao funciona aggregate( altforrm ~ sp, dadosforr, mean )
# nao funciona aggregate( alturapolm ~ sp, dadosforr, mean )
# para o desvio padrao usar a
#There's the plotrix package with has a built-in function for this:
# std.error
#
# comparar principe co e cristais
tapply(dadosprinc$altforrm, dadosprinc$site, summary)
tapply(dadosprinc$altforrm, dadosprinc$site, sd, na.rm=TRUE)
tapply(dadosprinc$alturapolm, dadosforr$site, summary)
tapply(dadosprinc$alturapolm, dadosforr$site, sd, na.rm=TRUE)
# 

#extrair medias e dp por grupo usando o pacote psych e
# funcao statsBy ou describeBy
# https://personality-project.org/r/html/describe.by.html#:~:text=To%20get%20descriptive%20statistics%20for,and%20kurtosis%20should%20be%20found.
#
# or use tapply as: https://stackoverflow.com/questions/9847054/how-to-get-summary-statistics-by-group



# ajustar boxplot usando a receita http://www.sthda.com/english/wiki/two-way-anova-test-in-r
