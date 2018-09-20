x1 = c(12,3245,5647,78,34,98)
x2 = c(4354,514,5656,34,565,12)
rbind_x1x2 <- rbind(x1,x2)
cbind_x1x2 <- cbind(x1,x2)
x1_34 = matrix(x1,nrow = 3, ncol = 4)
A = matrix(rnorm(16), 4, 4)
solve(A)  #求逆
t(A)     #转置

A.e = eigen(A, symmetric = T)  #求特征根和特征向量

apply(A,1,sum)  #按行求和
rowMeans(A)
colSums(A)
median(x1)  #中位数
sd(x1)  #标准差
var(x1)  #方差
apply(A,2,mean)  #按列求均值
apply(A,2,var)   #按列方差
apply(A,1,function(x,a)x*a,a=2)   #建立函数
apply(A,1,function(x,a)x^a,a=2)

length(x1)  #矩阵长度
length(A)
mode(A)     #矩阵的数据类型
X = data.frame(x1,x2)  #形成两列数据框

a = array(1:12,c(2,3,2))   # 构建数组，c()中是三个维度数

cor(x1,x2)   #相关系数
cov(x1,x2)   #协方差