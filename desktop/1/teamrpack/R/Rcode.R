raw_data=read.csv("updatedatav2.csv",header=TRUE)
sd=scale(raw_data)
save(sd,file="standardlized matrix")
pca=princomp(sd,cor=T)
screeplot(pca,type="line",main="PCA analysis",lwd=2)
dcor=cor(sd)
deig=eigen(dcor)
sumeigv=sum(deig$values)
sum(deig$value[1:2])/21
sum(deig$value[1:3])/21