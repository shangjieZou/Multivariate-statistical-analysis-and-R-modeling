# 系统聚类
library("readxl")
setwd("E:/A邹商杰的paper/多元统计与R语言建模")
d7.2 = read_excel("ExampleData.xls",'d7.2')


distance = dist(d7.2)    # 算距离
hc_d7.2 = hclust(distance,'single')   #聚类（最短距离法）
re = rect.hclust(hc_d7.2, k=3)  #加框


# kmeans聚类

# 生成数据集
set.seed(123)
x1 = matrix(rnorm(1000,0,0.3),ncol = 10)  #均指为0，标准差0.3
x2 = matrix(rnorm(1000,1,0.3),ncol = 10)
X = rbind(x1,x2)


km = kmeans(X,2)  # 分成两个簇
kc = km$cluster
plot(X, pch = km$cluster, col = kc)


# d7.2聚类实例
k_d7.2 = read.table("clipboard", header = T)
attach(k_d7.2)
km_d7.2 = kmeans(k_d7.2[,1:2],3)
kc = km_d7.2$cluster
plot(k_d7.2[,1:2], pch = km_d7.2$cluster, col = kc)