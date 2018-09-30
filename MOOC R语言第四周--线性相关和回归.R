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
cor(Test_data)   # 获得相关系数矩阵（偏相关分析，各个变量与因变量的关系）

R_square = summary(fm)$r.sq    #前面构建的多元线性回归模型的决定系数R^2

R = sqrt(R_square)     # 多元数据复相关系数




#'''''全局择优法选择最佳拟合模型（根据残差平方和、自变量个数和R方判断）

library("leaps")  # 使用例4.4数据
yX_income = read.table("clipboard", header = T)
varsel = regsubsets(y~x1+x2+x3+x4, data = yX_income)
result = summary(varsel)
data.frame(result$outmat, RSS = result$rss, R_2 = result$rsq)
data.frame(result$outmat, adjR2 = result$adjr2, Cp = result$cp, BIC = result$bic)
#'''''outmat表示被赋予参数的自变量，rss残差平方和，rsq决定系数
# 选择R^2大，自变量少的（注：不要盲目选RSS小的）
