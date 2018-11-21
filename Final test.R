dist(matrix(c(0,8,7,3,2,8,0,5,5,6,7,5,0,6,7,3,5,6,0,1,2,6,7,1,0),nrow = 5,ncol = 5))
MDS1=cmdscale(Matrix)
plot(MDS1[,1],MDS1[,2])
text(MDS1[,1],MDS1[,2])
hc = hclust(dist(Matrix))
plot(hc)
rect.hclust(hc,2)
rect.hclust(hc,3)

dat = read.table("clipboard", header = T)
attach(dat)
detach(dat)
summary(dat[,1])  # Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
cor(dat)
fm = lm(y~x1+x2+x3+x4,data = dat)
summary(fm)
summary(fm)$Coefficient
fm.step=step(fm,direction="both")
pre = predict(fm.step,data.frame(x1=3100,x2=560,x3=1900,x4=800))