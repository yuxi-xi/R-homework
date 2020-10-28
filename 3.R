#数值变量
class(sqrt(1:20))
class(4+2i)
class(1L)
class(0.3:5.9)
class(1:8)

#字符向量
class(c("pig","cat","apple"))

#因子
(gender<-factor(c("male","female","male","female")))
levels(gender)
nlevels(gender)
as.integer(gender)
gender_char<-sample(c("female","male"),replace=TRUE)
gender_fac<-as.factor(gender_char)
object.size(gender_char)
object.size(gender_fac)
as.character(gender)

#检查类
is.character("red lorry,yellow lorry")
is.logical(FALSE)
is.list(list(a=1,b=6))
is(gender,"factor")
is.factor(gender)
ls(pattern="^is",baseenv())
is.numeric(1)
is.numeric(1L)
is.integer(1)
is.integer(1L)
is.double(1)
is.double(1L)

#更改类
x<-"1532.4384"
as(x,"numeric")
as.numeric(x)
y<-c(2,29,307)
as.data.frame(y)

#检查变量
y<-c(1,2,3,4,5,6,7,8)
for(i in y)print(i)
num<-runif(30)
summary(num)
letters
letters[1:7]
LETTERS
fac<-factor(sample(letters[1:7],30,replace=TRUE))
summary(fac)
bool<-sample(c(TRUE,FALSE,NA),30,replace=TRUE)
summary(bool)
attributes(fac)
View(dfr)

#工作区
peach<-1
plum<-"fruity"
pear<-TRUE
ls()
ls(pattern="ea")
ls.str()
browseEnv()
ls()
rm(peach)
ls()
