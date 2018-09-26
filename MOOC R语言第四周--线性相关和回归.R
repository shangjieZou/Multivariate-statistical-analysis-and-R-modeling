Test_data = read.table("clipboard",header = T) # read data from clipboard
attach(Test_data)
print(Test_data)
fm = lm(y~x1, data = Test_data) # Linear Regrassion

plot(y~x1, data = Test_data)
abline(fm)
anova(fm)
summary(fm)#回归系数t检验


# 一元相关分析--相关系数计算
lxy = function(x,y)  # 建立函数
sum(x*y)-sum(x)*sum(y)/length(x)  # 离均差乘积和函数
r = lxy(x1,y)/sqrt(lxy(x1,x1)*lxy(y,y))  # 计算相关系数
cor.test(x1,y)  # 相关系数假设检验

fm = lm(y~x1+x2+x3, data = Test_data)  # 获得多元线性回归方程


