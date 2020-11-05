#创建数字数列
8.5:4.5
#不同的值被拼接成单一向量
c(1,1:3,c(5:8),13)

#向量
vector("numeric",5)
vector("complex",5)
vector("logical",5)
vector("character",5)
vector("list",5)

#序列
seq.int(3,12)
seq.int(3,18,3)
seq.int(0.2,0.02,-0.02)

n<-0
1:n
seq_len(n)
pp<-c("peter","piper","picked","a","peck","of","picked","pappers")
for(i in seq_along(pp))print(pp[i])
length(1:5)  
length(c(TRUE,FALSE,NA))
sn<-c("sheena","leads","sheila","needs")
length(sn)
nchar(sn)
poincare<-c(1,0,0,0,2,0,3,3,4)
length(poincare)<-3
poincare
length(poincare)<-8
poincare

#命名
c(apple=1,banana=2,"kiwi fruit"=3,4)
x<-1:4
names(x)<-c("apple","banana","kiwi fruit")
x
names(x)
names(1:4)

#索引向量
x<-(1:5)^2
x
x[c(1,3,5)]
x[c(-2,-4)]
x[c(TRUE,FALSE,TRUE,FALSE,TRUE)]
x<-(1:5)^2
x
names(x)<-c("one","four","nine","sixteen","twentyfive")
x[c("one","nine","twentyfive")]
x[c(1,NA,5)]
x[c(TRUE,FALSE,NA,FALSE,TRUE)]
x[6]
x[1.9]
x[-1.9]
x[]
which(x>10)
which.min(x)
which.max(x)

#向量循环和重复
1:5+1
1+1:5
1:5+1:7
1:5+1:15
rep(1:5,3)
rep(1:5,each=3)
rep(1:5,times=1:5)
rep(1:5,length.out=7)
rep.int(1:5,3)
rep_len(1:5,13)

#创建数组
(three_d_array<-array(
  1:24,
  dim=c(4,3,2),
  dimnames = list(
    c("one","two","three","four"),
    c("ein","zwei","drei"),
    c("un","deux")
  )
))
class(three_d_array)

#创建矩阵
(a_matrix<-matrix(
  1:12,
  nrow=4,
  dimnames=list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))
class(a_matrix)
#使用array函数创建矩阵
(two_d_array<-array(
  1:12,
  dim=c(4,3),
  dimnames=list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )))
class(two_d_array)
#创建矩阵
(a_matrix<-matrix(
  1:12,
  nrow=4,
  byrow=TRUE,
  dimnames=list(
    c("one","two","three","four"),
    c("ein","zwei","drei")
  )
))
class(a_matrix)

#行，列和纬度
dim(three_d_array)
dim(a_matrix)
nrow(a_matrix)
ncol(a_matrix)
length(three_d_array)
length(a_matrix)
dim(a_matrix)<-c(6,2)
a_matrix
identical(nrow(a_matrix),NROW(a_matrix))
identical(ncol(a_matrix),NCOL(a_matrix))
recaman<-c(0,1,2,3,4,5,12,13)
nrow(recaman)
NROW(recaman)
ncol(recaman)
NCOL(recaman)

rownames(a_matrix)
colnames(a_matrix)
dimnames(a_matrix)
a_matrix[1,c("zwei","drei")]
a_matrix[1,]
a_matrix[,c("zwei","drei")]


#合并矩阵
(another_matrix<-matrix(
  seq.int(2,24,2),
  nrow=4,
  dimnames=list(
    c("five","six","seven","eight"),
    c("vier","funf","sechs")
  )
))
c(a_matrix,another_matrix)
cbind(a_matrix,another_matrix)
rbind(a_matrix,another_matrix)
a_matrix+another_matrix
a_matrix*another_matrix

#数组运算
(another_matrix1<-matrix(1:12,nrow=2))
a_matrix+another_matrix1
t(a_matrix)
a_matrix%*%t(a_matrix)#内乘
1:3%o%4:6#外乘
outer(1:3,4:6)
(m<-matrix(c(1,3,5,7,8,9,-5,2,4),nrow=3))
m^-1
(inverse_of_m<-solve(m))
m%*%inverse_of_m
