#creat list
(a_list<-list(
  c(1,1,1,2,3,3,5),
  month.abb,
  matrix(c(3,-3,1,2),nrow=2),
  asin
  ))

names(a_list)<-c("catalan","months","involutary","arcsin")
a_list

(main_list<-list(
  middle_list=list(
    element_in_middle_list=diag(3),
    inner_list=list(
      element_in_inner_list="a"
    )
  ),
  element_in_main_list=log10(1:10)
))

#原子变量和递归变量
is.atomic(list())
is.recursive(list())
is.atomic(numeric())
is.recursive(numeric())

#列表的纬度
length(a_list)
length(main_list)
dim(a_list)
nrow(a_list)
NROW(a_list)
NCOL(a_list)

#列表的算术运算
l1<-list(1:5)
l2<-list(6:10)
l1[[1]]+l2[[1]]

#索引列表
l<-list(
  first=1,
  second=2,
  third=list(
    alpha=3.1,
    beta=3.2
  )
)
l<-list(first=1,second=2,third=list(alpha=3.1,beta=3.2))
l[1:2]
l[-3]
l[c(TRUE,TRUE,FALSE)]
l[[1]]
l[["first"]]
is.list(l[1])
is.list(l[[1]])
l$first
l$f
first

#嵌套方括号或传入向量来访问嵌套元素
l[["third"]]["beta"]
l[[c("third","beta")]]
is.list(l[["third"]]["alpha"])
is.list(l[["third"]][["alpha"]])

l[c(4,1,5)]
l[c("fourth","first","fifth")]

#以双方括号还是美元符号来访问元素内容
l[["fourth"]]
l$fourth
l[[2]]

#向量和列表之间的转换
busy_beaver<-c(1,2,34,567)
as.list(busy_beaver)
as.numeric(list(1,2,34,567))
(prime_factors<-list(
  two=2,
  three=3,
  four=c(2,2),
  five=5,
  six=c(1,6),
  seven=7,
  eight=c(2,2,2),
  nine=c(3,3),
  ten=c(5,2)
))
new_factors<-unlist(prime_factors)
new_factors
new_factors[1]
is.list(prime_factors)
is.list(new_factors)
is.list(new_factors[1])
is.list(new_factors[[1]])

#组合列表
c(list(a=1,b=2),list(3))
c(list(a=1,b=2),3)
matrix_list_hybrid<-cbind(list(a=1,b=2),list(c=3,list(d=4)))
matrix_list_hybrid
str(matrix_list_hybrid)

#NULL
china_holiday<-list(
  Jan="New Year's Day",
  Feb="Spring Festival",
  Mar=NULL,
  Apr="Qingming Festival",
  May="May Day",
  June="Dragon Boat Festival",
  Jul=NULL,
  Aug=NULL,
  Sep="Moon Festival",
  Oct="National Day",
  Nov=NULL,
  Dec=NULL
  )
length(NULL)
length(NA)
is.null(NULL)
is.null(NA)
is.na(NULL)
china_holiday$Sep<-NULL
china_holiday
china_holiday$June<-list(NULL)
china_holiday

#成对列表
(arguements_of_sd<-formals(sd))
class(arguements_of_sd)
pairlist()
list()

#数据框
(a_data_frame<-data.frame(
  x=letters[1:5],
  y=rnorm(5),
  z=runif(5)>0.5
))
class(a_data_frame)
y<-rnorm(5)
names(y)<-month.name[1:5]
data.frame(
  x=letters[1:5],
  y=y,
  z=runif(5)>0.5
)
data.frame(
  x=letters[1:5],
  y=y,
  z=runif(5)>0.5,
  row.names=NULL
)

#通过row.names传入一个向量来为每行命名
data.frame(
  x=letters[1:5],
  y=y,
  z=runif(5)>0.5,
  row.names=c("jackie","tito","jermaine","marlon","michael")
)

#检索或更改行名称
rownames(a_data_frame)
colnames(a_data_frame)
dimnames(a_data_frame)
nrow(a_data_frame)
ncol(a_data_frame)
dim(a_data_frame)
length(a_data_frame)
names(a_data_frame)
data.frame(
  x=1,
  y=2:3,
  z=4:7
)
data.frame(
  x=1,
  y=2:3,
  z+4:6
)
data.frame(
  "A colum"=letters[1:5],
  "..."=rnorm(5),
  "..."=runif(5)>0.5,
  check.names = TRUE
)

data.frame(
  "A column"=letters[1:5],
  "..."=rnorm(5),
  "..."=runif(5)>0.5,
  check.names = FALSE
)

#索引数据框
a_data_frame[2:3,-3]
a_data_frame[c(FALSE,TRUE,TRUE,FALSE,FALSE),c("x","y")]
a_data_frame[2:3,1]
class(a_data_frame[2:3,1])
class(a_data_frame[2:3,-3])
a_data_frame$x[2:3]
a_data_frame[[1]][2:3]
a_data_frame[["x"]][2:3]
a_data_frame[a_data_frame$y>0|a_data_frame$z,"x"]
subset(a_data_frame,y>0|z,x)

#基本数据框操作
t(a_data_frame)
class(t(a_data_frame))
another_data_frame<-data.frame(
  z=rlnorm(5),
  y=sample(5),
  x=letters[3:7]
)
rbind(a_data_frame,another_data_frame)
cbind(a_data_frame,another_data_frame)
merge(a_data_frame,another_data_frame,by="x")
merge(a_data_frame,another_data_frame,by="x",all=TRUE)
colSums(a_data_frame[2:3])
colMeans(a_data_frame[2:3])
