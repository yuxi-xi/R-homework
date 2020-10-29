#exercise 3-1
class(Inf)
class(NA)
class(NaN)
typeof(Inf)
typeof(NA)
typeof(NaN)
mode(Inf)
mode(NA)
mode(NaN)

#exercise 3-2
animals_char<-sample(c("dog","cat","hamster","goldfish"),1000,replace=TRUE)
animals_char
table(animals_char)
fac<-factor(sample(animals_char[1:9],9,replace = TRUE))
fac
table(fac)
levels(animals_char)

#exercise 3-3
x<-"6.283185"
as(x,"numeric")
"corn"<-q
"carrot"<-w
"eggplant"<-e
"pumpkin"<-r
print(ls(pattern="a"))
