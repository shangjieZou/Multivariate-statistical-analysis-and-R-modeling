
#----------对数线性模型
d5.2 = read.table("clipboard", header = T)   #例5.2数据
log_regress = glm(y~x1+x2, family = poisson, data = d5.2)  #对数线性模型泊松分布
summary(log_regress)


#-----------logistic回归
d5.1 = read.table("clipboard", header = T)
logit = glm(y~x1+x2+x3, family = binomial, data = d5.1)  #binormial表示二项分布
summary(logit)
logit.step = step(logit)  #逐步筛选法筛选变量
summary(logit.step)


#----------完全随机方差分析
d5.3 = read.table("clipboard", header = T)
anova(lm(Y~factor(A), data = d5.3))


d5.4 = read.table("clipboard", header = T)
anova(lm(Y~factor(A)+factor(B), data = d5.4))