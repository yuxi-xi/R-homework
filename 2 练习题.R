#exercise 1 T1
x<-c(1:1000)
atan(1/x)

#T2
x<-c(1:1000)
y<-atan(1/x)
tan(y)
z<-(1/tan(y))
z

#exercise 2
identical(x,z)
x==z
all.equal(x,z)
all.equal(x,z,tolerance=0)

#exercise 3
true_and_missing<-TRUE
false_and_missing<-FALSE
mixed<-c(TRUE,FALSE,NA)
any(true_and_missing,false_and_missing,mixed)
all(true_and_missing,false_and_missing,mixed)
