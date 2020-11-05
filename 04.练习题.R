#4-1

#question
#使用seq.int函数
seq.int(0,1,0.25)

#exercise
#创建包含前20个三角形数的序列
n<-1:20
x<-n*(n+1)/2
x

#使用前二十个英文字母来给向量命名
names(x)<-c(letters[1:20])
x

#选择命名为元音的三角数
x[c("a","e","i","o","u")]

#4-2
#question
#1:name=value;2:names()

#exercise
a<-c(10:0,0:11)
diag(a,21,21)
