d6.1 = read.table("clipboard", header = T)
boxplot(x_1~G, d6.1)
boxplot(x_2~G, d6.1)

# logistic分析一下
summary(glm(G-1~x_1+x_2, family = binomial, d6.1))
#  x2 can reflect weather

attach(d6.1)
plot(x_1,x_2)
text(x_1,x_2,G,adj = -0.5)  # 以G为group，给数据点做标记


# Fisher判别分析
library("MASS")
ld = lda(G~x_1+x_2)
lp = predict(ld)
G_predict = lp$class
compare_predict = data.frame(G, G_predict)
compare_predict


# Bayes判别
d6.3 = read.table("clipboard", header = T)
attach(d6.3)
Bayes_ld = lda(G2~Q+C+P, prior = c(5,8,7)/20)  #  prior后即为先验概率
Z1 = predict(Bayes_ld)
data.frame(G2, Z1$class)